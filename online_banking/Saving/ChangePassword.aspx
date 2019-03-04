<%@ Page Title="" Language="C#" MasterPageFile="~/Saving/Saving.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Saving_ChangePassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<style type="text/css">
    *{
    border:1px  blue;
    }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2 text-right">
                <asp:Label ID="Label1" runat="server" Text="Current Password: "></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="CurrentPasswd_tb" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-md-5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Current Password field cannot be empty" ControlToValidate="CurrentPasswd_tb"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2 text-right">
                <asp:Label ID="Label2" runat="server" Text="New Password: "></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="NewPasswd_tb" runat="server" TextMode="Password"></asp:TextBox>
                <ajaxToolkit:PasswordStrength ID="NewPasswd_tb_PasswordStrength" runat="server" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8" TargetControlID="NewPasswd_tb" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            <div class="col-md-5 text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="New Password field cannot be empty" ControlToValidate="NewPasswd_tb"></asp:RequiredFieldValidator>
            </div>
        </div>
    <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2 text-right">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password: "></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="CnfrmPasswd_tb" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-md-5">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="New Paswords do not Match" ControlToCompare="NewPasswd_tb" ControlToValidate="CnfrmPasswd_tb"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-3 text-right">
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" />
            </div>
            <div class="col-md-3">
                <asp:Label ID="Pass_Wrong" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

