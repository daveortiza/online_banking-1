<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
                <table>
                    <tr>
                        <td class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="text-right">
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
</asp:Content>

