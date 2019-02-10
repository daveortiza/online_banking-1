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
        <div class="row">
           <div class="col-md-6">
               <asp:Menu ID="Services" runat="server" BorderColor="#3366FF" BorderStyle="Outset" BorderWidth="1px" CssClass="auto-style1">
                   <Items>
                       <asp:MenuItem Text="Show Balance" Value="Show Balance"></asp:MenuItem>
                       <asp:MenuItem Text="Transaction" Value="Transaction"></asp:MenuItem>
                       <asp:MenuItem NavigateUrl="~/Saving/Transfer.aspx" Text="Transfer" Value="Transfer"></asp:MenuItem>
                       <asp:MenuItem Text="Deposit" Value="Deposit"></asp:MenuItem>
                       <asp:MenuItem Text="Fixed Deposit" Value="Fixed Deposit"></asp:MenuItem>
                   </Items>
               </asp:Menu>
           </div>
            <div class="col-md-6">
           </div>
        </div>
    </div>
</asp:Content>
