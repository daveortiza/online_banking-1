<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Account_Recovery.aspx.cs" Inherits="Account_Recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="container">
        <div class="row"><!--email sent label-->
            <div class="col-md-12 text-center">
                <asp:Label ID="info_lbl" runat="server" Text="" Font-Size="X-Large"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-3 text-right">
                <asp:Label ID="msg_lbl" runat="server" Text="Your activation code:" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="activation_tb" runat="server"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
           <div class="col-md-5"></div>
           <div class="col-md-2 text-center">
               <asp:Label ID="Sucess_lbl" runat="server" Text=""></asp:Label>
           </div>
        </div>
        <div class="row">
           <div class="col-md-5"></div>
           <div class="col-md-2 text-center">
               <asp:Button ID="verify_btn" CssClass="btn-success"  runat="server" Text="Verify" OnClick="verify_btn_Click" />
           </div>
        </div>
    </div>
</asp:Content>

