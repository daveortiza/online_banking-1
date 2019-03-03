<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Verification_Successfull.aspx.cs" Inherits="Verification_Sucessfull" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-12 text-center">
                <asp:Label ID="registermsg_lbl" runat="server" Text="Registered Successful" Font-Size="X-Large" ForeColor="Green"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <asp:Label ID="Loginmsg_lbl" runat="server" Text="Click the button below to Login" Font-Size="Medium"></asp:Label>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12 text-center">
            <asp:Button ID="login_btn" runat="server" CssClass="btn-info"  Text="Login" OnClick="Login_btn_Click" Style="font-size: x-large" Font-Size="22pt" />
        </div>
    </div>
</asp:Content>

