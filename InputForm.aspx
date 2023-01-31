<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InputForm.aspx.cs" Inherits="InputForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.center{ width:800px; margin:0 auto;}
.ecssing{width:790px;float:left;padding:15px 0 30px 10px;margin:10px 0 30px 0;background-color:#e9f0f2;filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7fbfc', endColorstr='#e9f0f2'); /* for IE */background: -webkit-gradient(linear, left top, left bottom, from(#f7fbfc), to(#e9f0f2)); /* for webkit browsers */background: -moz-linear-gradient(top, #f7fbfc, #e9f0f2); /* for firefox 3.6+ */	-webkit-border-radius:5px;-moz-border-radius:5px;-o-border-radius:5px;border-radius:5px;}
.ecssing h2 {padding:0px;margin:0px 0 10px 0;font:bold 30px Calibri, Arial, Helvetica, sans-serif;text-align:Center;color:#000000;}
.ecssing p {padding:0px;margin:0px 0 20px 0;font:bold 14px  Arial, Helvetica, sans-serif;text-align:Center;	color:#000000;}
label {padding:15px 0px 5px 0; margin:0px;width:225px; float:left;font:normal 14px Arial, Helvetica, sans-serif !important;text-align:left;color:#000000;}
input {border:1px solid #848484; border-top:2px solid #848484;	background-color:#FFFFFF;padding:2px 2px; margin:0px 0 3px 0;width:200px;color:#000000;font:normal 12px Arial, Helvetica, sans-serif;text-align:left;	height:18px;}
 select {border:1px solid #848484; border-top:2px solid #848484;	background-color:#FFFFFF;padding:2px 1px 2px 2px; margin:0px 0 3px 0;width:204px;color:#000000;font:normal 12px Arial, Helvetica, sans-serif;text-align:left;	}
 .boxes {width:auto;margin:0;padding:5px 15px;text-align:center;	-webkit-border-radius: 7px;-moz-border-radius: 7px;-o-border-radius: 7px;-border-radius: 7px;text-decoration:none !important;font:bold 20px/22px Arial, Helvetica, sans-serif;color:#ffffff !important;background-color:#558a04; /* for non-css3 browsers */filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#83d801', endColorstr='#558a04'); /* for IE */background: -webkit-gradient(linear, left top, left bottom, from(#83d801), to(#558a04)); /* for webkit browsers */background: -moz-linear-gradient(top, #83d801, #558a04); /* for firefox 3.6+ */
	behavior: url(border-radius.htc);}
.boxes a {font:bold 20px/22px Arial, Helvetica, sans-serif;	text-align:center;color:#ffffff !important;	text-decoration:none !important;}
.boxes a:hover {text-decoration:none !important;}
</style>
    <script type="text/javascript">
        function submitForm() {
            var form = document.forms[0];
            form.action = "RequestForm.aspx";
            form.submit();
        }
</script>
</head>
<body>
    <form action="RequestForm.aspx" method="post">
<p>Note: This page behaves like a shopping cart or checkout page on a website.</p>
<p><h2><u>Merchant Details</u></h2></p>
<table width="650px;">
<tr>
	<td colspan="2" align="center" valign="middle"></td>
	
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Pay Id</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="PAY_ID" name="PAY_ID" value="1099120418114007" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Order Id</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="ORDER_ID" name="ORDER_ID" value="" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Transaction Type</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="TXNTYPE" name="TXNTYPE" value="Sale" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Amount</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="AMOUNT" name="AMOUNT" value="100" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Currency Code</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CURRENCY_CODE" name="CURRENCY_CODE" value="356" /> </td>
</tr>
<tr><td><h2><u>Customer Billing Detail</u></h2></td></tr>
<tr>
	<td width="50%" align="right" valign="middle">Customer Name</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_NAME" name="CUST_NAME" value="Rohit" /></td>
</tr>

<tr>	
	<td width="50%" align="right" valign="middle">Street Address1</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_STREET_ADDRESS1" name="CUST_STREET_ADDRESS1" value="Civil Lines" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Street Address2</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_STREET_ADDRESS2" name="CUST_STREET_ADDRESS2" value="Station Road" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">City</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_CITY" name="CUST_CITY" value="New Delhi" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">State</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_STATE" name="CUST_STATE" value="New Delhi" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Country</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_COUNTRY" name="CUST_COUNTRY" value="India" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Zip Code</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_ZIP" name="CUST_ZIP" value="110075" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Email</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_EMAIL" name="CUST_EMAIL" value="test@pay10.com" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Phone</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_PHONE" name="CUST_PHONE" value="9999999999" /> </td>
</tr>
<tr><td><h2><u>Customer Shipping Details</u></h2></td></tr>
<tr>
	<td width="50%" align="right" valign="middle">Customer Name</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_NAME" name="CUST_SHIP_NAME" value="Rohit" /></td>
</tr>

<tr>	
	<td width="50%" align="right" valign="middle">Street Address1</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_STREET_ADDRESS1" name="CUST_SHIP_STREET_ADDRESS1" value="Civil Lines" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Street Address2</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_STREET_ADDRESS2" name="CUST_SHIP_STREET_ADDRESS2" value=" Station Road" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">City</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_CITY" name="CUST_SHIP_CITY" value="Bareilly" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">State</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_STATE" name="CUST_SHIP_STATE" value="Uttar Pradesh" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Country</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_COUNTRY" name="CUST_SHIP_COUNTRY" value="India" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Zip Code</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_ZIP" name="CUST_SHIP_ZIP" value="110075" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Email</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_EMAIL" name="CUST_SHIP_EMAIL" value="test@pay10.com" /></td>
</tr>
<tr>	
	<td width="50%" align="right" valign="middle">Phone</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="CUST_SHIP_PHONE" name="CUST_SHIP_PHONE" value="9999999999" /> </td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Return URL</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="RETURN_URL" name="RETURN_URL" value="http://localhost:56446/ResponsePage.aspx" /></td>
</tr>
<tr>
	<td width="50%" align="right" valign="middle">Product Description</td>
	<td width="50%" align="center" valign="middle"><input type="text" id="PRODUCT_DESC" name="PRODUCT_DESC"  /></td>
</tr>
<tr>
	<td colspan="2" width="100%" align="center" valign="middle">
    <div style="cursor:pointer; padding-top: 25px; padding-left: 230px;">
        <a class="boxes" onclick="javascript:submitForm()">Pay Now
			</a>
        </div>
	</td>	
</tr>


</table>

</form>
</body>
</html>
