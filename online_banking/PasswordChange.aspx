<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="PasswordChange.aspx.cs" Inherits="PasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-2 text-right">
                <asp:Label ID="Label2" runat="server" Text="New Password: "></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-5 text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="New Password field cannot be empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </div>
        </div>
    <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-2 text-right">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password: "></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-5">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="New Paswords do not Match" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-3 text-right">
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" />
            </div>
            <div class="col-md-3">
                <asp:Label ID="Pass_Wrong" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

