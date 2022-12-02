<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResponsePage.aspx.cs" Inherits="ResponsePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <table width="96%" border="0" align="center" cellpadding="0"
		cellspacing="0" bgcolor="#FFFFFF">
		<tr>
			<td height="150" align="left">&nbsp;</td>
		</tr>
		<tr>
			<td align="center"><table width="600" border="0" cellspacing="0"
					cellpadding="0"
					style="padding: 20px; border: 1px dotted #ccc; border-radius: 20px;">
					<tr>
						<td><table width="100%" border="0" cellspacing="0"
								cellpadding="0">
								<tr>
									<td height="30" colspan="4" align="center" class="heading">RESPONSE
										FORMAT</td>
								</tr>
								<tr>
									<td colspan="4" align="left">&nbsp;</td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>TXN ID</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbTxnId" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>ORDER ID</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbOrderId" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>RRN</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbRRN" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>AMOUNT</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbAmount" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>TXNTYPE</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbTxnType" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>AUTH
											CODE</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbAuth" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>TXN STATUS</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbTxnStatus" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>RESPONSE
											MESSAGE</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe" id="tdResponseTrue"><asp:Label ID="lblResponse" runat="server" Text=""></asp:Label></td>
								</tr>
								<tr>
									<td align="left" bgcolor="#deecff">&nbsp;</td>
									<td height="30" align="left" bgcolor="#deecff"><strong>TXN DATE</strong></td>
									<td align="left" bgcolor="#eef5fe">&nbsp;</td>
									<td align="left" bgcolor="#eef5fe"><asp:Label ID="tbTxnDate" runat="server" Text=""></asp:Label></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="200" align="left">&nbsp;</td>
		</tr>
	</table>
</body>
</html>
