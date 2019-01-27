<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Saving.aspx.cs" Inherits="Saving_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-left">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-md-4 text-center">
                    <asp:Label ID="Label3" runat="server" Text="Saving Account"></asp:Label>
                </div>
                <div class="col-md-4 text-right"><h6>Content Here</h6></div>
            </div>
            <hr/>
            <div>

                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Transfer funds" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
