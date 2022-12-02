using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Reflection;
using System.Collections.Specialized;
using System.Data;
using System.IO;
using System.Configuration;
using MerchantAPI;

public partial class RequestForm : System.Web.UI.Page
{
    public String hashValue = "";
    string salt = "";
    protected MerchantAPI.ChecksumCalculator objCalc = new MerchantAPI.ChecksumCalculator();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            salt = ConfigurationSettings.AppSettings["saltValue"].ToString();
            hashValue = objCalc.generateHash(Request.Form, salt).Trim();
        }
        catch (Exception)
        {
        }
    }

    //protected string formatAmount(string amount, int decimalPlaces)
    //{
    //    string format = String.Format("{{0:N{0}}}", decimalPlaces);
    //    amount = String.Format(format, Convert.ToDecimal(amount));
    //    amount = amount.Replace(".", "");
    //    return amount;
    //}

    
}
