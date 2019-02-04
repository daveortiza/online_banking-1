<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Saving.aspx.cs" Inherits="Saving_Saving" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>My Account</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 100%;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-left">
                <asp:Label ID="Welcome_lbl" runat="server" CssClass="auto-style1"></asp:Label>
            </div>
            <div class="col-md-6 text-right">
                <p class="auto-style1">
                    <strong>
                    <asp:Label ID="Acnomsg_lbl" runat="server" Text="Account Number:" CssClass="auto-style1"></asp:Label>
                    </strong>
                    <asp:Label ID="Acno_lbl" runat="server" CssClass="auto-style1"></asp:Label>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-right">
                <strong>
                <asp:Label ID="balmsg_lbl" runat="server" Text="Balance:" CssClass="auto-style1"></asp:Label>
                </strong>
                <asp:Label ID="bal_lbl" runat="server" CssClass="auto-style1"></asp:Label>
            </div>
        </div>
        <hr />
        <div>
            <table class="auto-style2">
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
</asp:Content>
