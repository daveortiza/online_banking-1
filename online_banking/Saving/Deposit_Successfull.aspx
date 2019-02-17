<%@ Page Title="" Language="C#" MasterPageFile="~/Saving/Saving.master" AutoEventWireup="true" CodeFile="Deposit_Successfull.aspx.cs" Inherits="Saving_Deposit_Successfull" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="Sucess_msg_lbl" runat="server" Text="Amount deposited sucessfully" Font-Size="XX-Large" ForeColor="#3366FF"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

