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
        <div class="row">
            <div class="col-md-2"><!--Account Number  Row-->
                <asp:Label ID="Trans_acno_lbl" runat="server" Text="Account Number" CssClass="auto-style1"></asp:Label>
                </div>
            <div class="col-md-2">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="81xxxx01" CssClass="auto-style1"></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" FilterInterval="7" FilterType="Numbers" TargetControlID="TextBox1" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2"><!--Confirm Account Number Row-->
                <asp:Label ID="Trans_acno_lbl0" runat="server" Text="Confirm account number" CssClass="auto-style1"></asp:Label>
                </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="81xxxx01" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterInterval="7" FilterType="Numbers" TargetControlID="TextBox1" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox1" ErrorMessage="Account number does not matches" ForeColor="Red">*</asp:CompareValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"><!--Transfer Row-->
            <asp:Label ID="Trans_bal_lbl" runat="server" Text="Transfer amount" CssClass="auto-style1"></asp:Label>
                </div>
            <div class="col-md-2">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="500" CssClass="auto-style1"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2"><!--Account Holders Name Row-->
            <asp:Label ID="Label1" runat="server" Text="Account Holder's name" CssClass="auto-style1"></asp:Label>
                </div>
            <div class="col-md-2">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
            </div>
        </div>

        <div class="row"><!--Transfer Button  Row-->
            <div class="col-md-4 " style="text-align: center">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Button ID="Transfer_btn" runat="server" Text="Transfer" OnClick="Transfer_btn_Click" CssClass="auto-style1" PostBackUrl="~/Saving/Transfer.aspx" />
                <asp:Label ID="Success_lbl" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
</asp:Content>