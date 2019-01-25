<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 872px;
        }

        .auto-style2 {
            font-size: xx-large;
        }

        .auto-style3 {
            width: 304px;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 801px;
            height: 279px;
        }
        .auto-style5 {
            width: 110px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="auto-style1">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style2"></td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Home Page" PostBackUrl="~/HomeBeforeLogin.aspx" CssClass="auto-style2" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <table border="1" class="auto-style4">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Email-ID" CssClass="auto-style2"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="email_tb" runat="server" CssClass="auto-style2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Uname_reqval" runat="server" ControlToValidate="email_tb" ErrorMessage="Email_ID cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="passwd_tb" runat="server" CssClass="auto-style2" ForeColor="Red" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PaswdTb_reqval" runat="server" ControlToValidate="passwd_tb" CssClass="auto-style2" ErrorMessage="Password cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style5">
                        <asp:Label ID="error_lbl" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td>
                        <asp:Button ID="login_btn" runat="server" CssClass="auto-style2" Text="Login" OnClick="Login_tbn_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
