<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Saving.aspx.cs" Inherits="Saving_Saving" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
        .auto-style3 {
            width: 266px;
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
                    <td class="auto-style3">
                        <asp:Label ID="Trans_acno_lbl" runat="server" Text="Account Number"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="81xxxx01"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" FilterType="Numbers" TargetControlID="TextBox1" />
                    </td>
                    <td>
                        <asp:Label ID="Trans_acno_lbl0" runat="server" Text="Confirm account number"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="81xxxx01" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox1" ErrorMessage="Account number does not matches" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                    <td>
                        <asp:Label ID="Trans_bal_lbl" runat="server" Text="Transfer amount"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="500" ></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td>
                        <asp:Label ID="Success_lbl" runat="server" ForeColor="Red"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Transfer_btn" runat="server" Text="Transfer" OnClick="Transfer_btn_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
