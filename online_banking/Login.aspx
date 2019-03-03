<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <br />
        <!--Account number field-->
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-3 text-right">
                <asp:Label ID="Label1" runat="server" Text="Account Number" Font-Size="X-Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="acno_tb" runat="server" Font-Size="X-Large" placeholder="8xxxxx01" Width="240px"></asp:TextBox>
            </div>
            <div class="col-md-1 text-right">
                <asp:RequiredFieldValidator ID="acno_reqval" runat="server" ControlToValidate="acno_tb" ErrorMessage="Account number cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <!--Password field-->
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-3 text-right">
                <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="X-Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="passwd_tb" runat="server" ForeColor="Red" TextMode="Password" Style="font-size: x-large" Width="240px"></asp:TextBox>
            </div>
            <div class="col-md-1 text-right">
                <asp:RequiredFieldValidator ID="PaswdTb_reqval" runat="server" ControlToValidate="passwd_tb" ErrorMessage="Password field cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <!--apply now message-->
        <div class="row">
            <div class="col-md-6"></div>
            <div class="col-md-2 text-right">
            </div>
        </div>
        <!--Login Button -->
        <div class="row">
            <div class="col-md-5 text-right"></div>
            <div class="col-md-1">
                <asp:Label ID="Label4" runat="server" ForeColor="#0066FF" Text=""></asp:Label><br />
                <asp:Button ID="login_btn" runat="server" CssClass="auto-style2 btn-info" Text="Login" OnClick="Login_btn_Click" Style="font-size: x-large" Font-Size="22pt" />
            </div>
            <div class="col-md-3 text-center">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF" Text="Don't have account ?" Font-Size="Large"></asp:Label><br />
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="False" PostBackUrl="~/Apply-Now.aspx">Apply Now <span aria-hidden="true" class="glyphicon glyphicon-hand-up"></span>
                </asp:LinkButton>
            </div>
        </div>
        <br />
        <!--Validation Summary -->
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-6">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="auto-style1" Style="font-size: x-large" />
            </div>
        </div>
        <!--Error message label-->
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-11 text-center">
                <asp:Label ID="error_lbl" runat="server" CssClass="auto-style1" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <br />
        <!--- forgot password-->
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-4">
                <asp:LinkButton ID="forget_password_lnkbtn" runat="server" CausesValidation="False" Font-Size="X-Large" ForeColor="Blue" OnClick="forget_password_lnkbtn_Click">Forgot Password</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
