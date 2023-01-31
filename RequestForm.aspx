<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestForm.aspx.cs" Inherits="RequestForm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function submitForm() {
            var form = document.forms[0];
            form.submit();
        }
        </script>
</head>
<body onload="javascript:submitForm()">
<form method="post" action="https://secure.pay10.com/pgui/jsp/paymentrequest">
 	<%           
             IEnumerator postParams = Request.Form.GetEnumerator();
            while (postParams.MoveNext())
            {
                String param = (String)postParams.Current;
                if (param.Equals("RETURN_URL"))
                {
            %>        
            <input type="hidden" name="<%=param %>" value="<%= Request.Params.Get(param)%>" />
            <%
                }
                else if (param.Equals("AMOUNT"))
                { 
             %>
            <input type="hidden" name="<%=param %>" value="<%= Request.Params.Get(param)%>" />
            <%     
                }
                else
                {
                    if (!Request.Params.Get(param).Equals(""))
                    {   
             %>
             
            <input type="hidden" name="<%=param %>" value="<%=Request.Params.Get(param)%>" />
            <%    
                    }
                }
            }
          
		    %>
            <input type="hidden" id="HASH" name="HASH" value="<%= hashValue %>" />
</form>
</body>
</html>
