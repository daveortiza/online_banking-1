<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="PasswordChangedSucessfully.aspx.cs" Inherits="PasswordChangedSucessfully" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <asp:Label ID="Label1" runat="server" Text="Password Changed Sucessfully" ForeColor="Green" Font-Size="XX-Large"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12 text-center">
                <asp:Button ID="login_btn" runat="server" CssClass="auto-style2 btn-info" Text="Login"  Style="font-size: x-large" Font-Size="22px" OnClick="login_btn_Click" />
            </div>
        </div>
    </div>
</asp:Content>

