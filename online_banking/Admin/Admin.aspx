<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLogin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Account_Number" DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Account_Number" HeaderText="Account_Number" InsertVisible="False" ReadOnly="True" SortExpression="Account_Number" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                        <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="Account" HeaderText="Account" SortExpression="Account" />
                        <asp:BoundField DataField="Account_Balance" HeaderText="Account_Balance" SortExpression="Account_Balance" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bank_test %>" DeleteCommand="DELETE FROM [sinup] WHERE [Account_Number] = @Account_Number" InsertCommand="INSERT INTO [sinup] ([fname], [mname], [lname], [Dob], [gender], [email], [address], [mobile], [Account], [Account_Balance], [pass]) VALUES (@fname, @mname, @lname, @Dob, @gender, @email, @address, @mobile, @Account, @Account_Balance, @pass)" SelectCommand="SELECT * FROM [sinup]" UpdateCommand="UPDATE [sinup] SET [fname] = @fname, [mname] = @mname, [lname] = @lname, [Dob] = @Dob, [gender] = @gender, [email] = @email, [address] = @address, [mobile] = @mobile, [Account] = @Account, [Account_Balance] = @Account_Balance, [pass] = @pass WHERE [Account_Number] = @Account_Number">
                    <DeleteParameters>
                        <asp:Parameter Name="Account_Number" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="mname" Type="String" />
                        <asp:Parameter Name="lname" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="Account" Type="String" />
                        <asp:Parameter Name="Account_Balance" Type="Int32" />
                        <asp:Parameter Name="pass" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="mname" Type="String" />
                        <asp:Parameter Name="lname" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="Account" Type="String" />
                        <asp:Parameter Name="Account_Balance" Type="Int32" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="Account_Number" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

