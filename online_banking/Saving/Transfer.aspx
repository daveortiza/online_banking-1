<%@ Page Title="" Language="C#" MasterPageFile="~/Saving/Saving.master" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Saving_Transfer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Trans_acno_lbl" runat="server" Text="Account Number" CssClass="auto-style1"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="81xxxx01" CssClass="auto-style1"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" FilterInterval="7" FilterType="Numbers" TargetControlID="TextBox1" />
                    </td>
                    <td>
                        <asp:Label ID="Trans_acno_lbl0" runat="server" Text="Confirm account number" CssClass="auto-style1"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="81xxxx01" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterInterval="7" FilterType="Numbers" TargetControlID="TextBox1" />
                        <span class="auto-style1">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox1" ErrorMessage="Account number does not matches" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                    <td>
                        <asp:Label ID="Trans_bal_lbl" runat="server" Text="Transfer amount"></asp:Label>
                        </span>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="500" CssClass="auto-style1"></asp:TextBox>
                        <span class="auto-style1">
                            <br /></td>
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></span></td>
                    <td>
                        <asp:Button ID="Transfer_btn" runat="server" Text="Transfer" OnClick="Transfer_btn_Click" CssClass="auto-style1" />
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

