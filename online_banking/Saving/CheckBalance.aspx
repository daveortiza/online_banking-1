<%@ Page Title="" Language="C#" MasterPageFile="~/Saving/Saving.master" AutoEventWireup="true" CodeFile="CheckBalance.aspx.cs" Inherits="Saving_Transactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:Label ID="Ac_bal" runat="server" Font-Size="X-Large"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <asp:GridView ID="Transactions_GridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" CellPadding="3" CssClass="auto-style1">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

