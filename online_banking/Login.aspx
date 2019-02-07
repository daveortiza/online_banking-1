<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style2 {
            font-size: large;
        }

        .auto-style3 {
            text-align: center;
            height: 25px;
            background-color: #99FF33;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <table>
                <tr>
                    <td class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="text-right">&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7 text-center">
                <table>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text="Account Number" CssClass="auto-style2" Style="font-size: xx-large"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="email_tb" runat="server"  Style="font-size: x-large" placeholder="8xxxxx01"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Uname_reqval" runat="server" ControlToValidate="email_tb" ErrorMessage="Account number cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style2" Style="font-size: xx-large"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="passwd_tb" runat="server" CssClass="auto-style2" ForeColor="Red" TextMode="Password" Style="font-size: x-large"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PaswdTb_reqval" runat="server" ControlToValidate="passwd_tb" CssClass="auto-style2" ErrorMessage="Password field cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="auto-style2">
                        <td class="auto-style5">
                            <asp:Label ID="error_lbl" runat="server" ForeColor="Red" CssClass="auto-style1"></asp:Label>
                        </td>
                        <td>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="auto-style1" />
                        </td>
                    </tr>
                    <tr class="auto-style2">
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center"></td>
                        <td>
                            <asp:Button ID="login_btn" runat="server" CssClass="auto-style2 btn-info" Text="Login" OnClick="Login_tbn_Click" Style="font-size: xx-large" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-2"></div>
        </div>
        <br />
        <br />
        <table class="container">
            <tr>
                <td class="auto-style3" colspan="3">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style2" ForeColor="#0066FF" Text="Don't have account ?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary">Apply Now
    <span aria-hidden="true" class="glyphicon glyphicon-hand-up"></span>
                    </asp:LinkButton></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

