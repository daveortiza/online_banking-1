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
                    <asp:Label ID="Welcome_lbl" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-md-4 text-center">
                </div>
                <div class="col-md-4 text-right">
                    <h3>
                        <asp:Label ID="Acno_lbl" runat="server"></asp:Label>
                    </h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-right">
                    <asp:Label ID="balmsg_lbl" runat="server" Text="Current Balance:"></asp:Label>
                    <asp:Label ID="bal_lbl" runat="server"></asp:Label>
                </div>
            </div>
            <hr />
            <div>

                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Label ID="Success_lbl" runat="server"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="Transfer_btn" runat="server" Text="Transfer" OnClick="Transfer_btn_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
