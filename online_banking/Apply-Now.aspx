<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Apply-Now.aspx.cs" Inherits="Apply_Now" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style4 {
            width: 92px;
        }

        .auto-style5 {
            height: 25px;
            width: 92px;
        }

        .auto-style6 {
            height: 23px;
            width: 92px;
        }

        .auto-style7 {
            width: 269px;
        }

        .auto-style8 {
            height: 25px;
            width: 269px;
        }

        .auto-style10 {
            width: 92px;
            height: 32px;
        }

        .auto-style11 {
            width: 269px;
            height: 32px;
        }

        .auto-style14 {
            height: 23px;
            width: 269px;
            text-align: left;
        }
        .auto-style15 {
            width: 92px;
            height: 41px;
        }
        .auto-style16 {
            width: 269px;
            height: 41px;
        }
        .auto-style17 {
            width: 72px;
            height: 41px;
        }
        .auto-style18 {
            height: 23px;
            width: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="fname_tb" runat="server" placeholder="First Name" ToolTip="Enter First Name"></asp:TextBox>
                    &nbsp;<asp:TextBox ID="TextBox10" runat="server" placeholder="Middle Name" ToolTip="Enter First Name"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox11" runat="server" placeholder="Last Name" ToolTip="Enter First Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style11" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" TargetControlID="TextBox8" Format="dd/MMM/yyyy" />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style7" colspan="2">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style7" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="example@abc.com"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style7" colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Mobile number"></asp:Label>
                </td>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="+91-xxx-xxx-xxxx"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Account Type"></asp:Label>
                </td>
                <td class="auto-style8" colspan="2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Saving</asp:ListItem>
                        <asp:ListItem>Loan</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Initial deposit</td>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="TextBox12" runat="server" placeholder="5000"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label6" runat="server" Text="Confirm password"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
        </table>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label9" runat="server" Text="Already have an account?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="submit_btn" runat="server" Text="Submit" OnClick="submit_btn_Click" EnableViewState="False" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/Login.aspx" Text="Login" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>


