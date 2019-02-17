<%@ Page Title="" Language="C#" MasterPageFile="~/Saving/Saving.master" AutoEventWireup="true" CodeFile="Deposit.aspx.cs" Inherits="Saving_Deposit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-1">
                <asp:Label ID="Label1" runat="server" Text="Amount" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="Amount_tb" runat="server" Font-Size="Large"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-1">
                <asp:Button ID="Deposit_btn" runat="server" Text="Deposit" Font-Size="Large" OnClick="Deposit_btn_Click" />
            </div>
        </div>
    </div>
</asp:Content>

