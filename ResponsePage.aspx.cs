using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections.Specialized;
using System.Configuration;
using MerchantAPI;
using System.Security.Cryptography;
using System.IO;

public partial class ResponsePage : System.Web.UI.Page
{
    Boolean verifyHash;
    string salt = "";
    
    MerchantAPI.ChecksumCalculator objCalc = new MerchantAPI.ChecksumCalculator();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            salt = ConfigurationSettings.AppSettings["saltValue"].ToString();
            verifyHash = objCalc.verifyHash(Request.Form, salt);
            if (verifyHash == false)
            {
                lblResponse.Text = "Checksum Mismatched";
            }
            else
            {
                lblResponse.Text = Request.Params.Get("RESPONSE_MESSAGE");
            }
            var dec = DecryptUsingCBC(Request.Params.Get("ENCDATA"));
            var decrypted = dec.Split('~');
            tbTxnId.Text = decrypted[2].Split('=')[1];
            tbOrderId.Text = decrypted[12].Split('=')[1];
            tbRRN.Text = "";
            tbAmount.Text = decrypted[16].Split('=')[1];
            tbTxnType.Text = decrypted[4].Split('=')[1];
            tbAuth.Text = "";
            tbTxnStatus.Text = decrypted[8].Split('=')[1];
            lblResponse.Text = decrypted[14].Split('=')[1];
            tbTxnDate.Text = decrypted[0].Split('=')[2];
        }
        catch (Exception ex)
        {
            lblResponse.Text = "Checksum Mismatched";
        }
    }

    public string DecryptToBytesUsingCBC(byte[] toDecrypt)
    {
        byte[] src = toDecrypt;
        byte[] dest = new byte[src.Length];
        using (var aes = new AesCryptoServiceProvider())
        {
            aes.BlockSize = 128;
            aes.KeySize = 128;
            aes.IV = Encoding.UTF8.GetBytes("1234123456785678");
            aes.Key = Encoding.UTF8.GetBytes("D9C6C86443383ACEA888E2B9F2F90D74");
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.Zeros;
            // decryption
            using (ICryptoTransform decrypt = aes.CreateDecryptor(aes.Key, aes.IV))
            {
                byte[] decryptedText = decrypt.TransformFinalBlock(src, 0, src.Length);

                return Encoding.UTF8.GetString(decryptedText);
            }
        }
    }
    public string DecryptUsingCBC(string a)
    {
        int mod4 = a.Length % 4;
        if (mod4 > 0)
        {
            a += new string('=', 4 - mod4);
        }
        return DecryptToBytesUsingCBC(Convert.FromBase64String(a));
    }
}