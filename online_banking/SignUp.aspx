<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 23px;
            width: 199px;
        }

        .auto-style3 {
            height: 25px;
            width: 199px;
        }

        .auto-style4 {
            width: 127px;
        }

        .auto-style5 {
            height: 25px;
            width: 127px;
        }

        .auto-style6 {
            height: 23px;
            width: 127px;
        }

        .auto-style7 {
            width: 269px;
        }

        .auto-style8 {
            height: 25px;
            width: 269px;
        }

        .auto-style9 {
            height: 23px;
            width: 269px;
        }

        .auto-style10 {
            width: 127px;
            height: 32px;
        }

        .auto-style11 {
            width: 269px;
            height: 32px;
        }

        .auto-style12 {
            height: 32px;
            width: 199px;
        }

        .auto-style13 {
            width: 199px;
        }
        .auto-style14 {
            margin-left: 320px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="2" class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="fname_tb" runat="server" placeholder="First Name" ToolTip="Enter First Name"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="Middle Name" ToolTip="Enter First Name"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox11" runat="server" placeholder="Last Name" ToolTip="Enter First Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Date of birth"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" TargetControlID="TextBox8" />
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="example@abc.com"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Mobile number"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="+91-xxx-xxx-xxxx"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Account Type"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Saving</asp:ListItem>
                            <asp:ListItem>Current</asp:ListItem>
                            <asp:ListItem>Demat</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Initial deposit</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox12" runat="server" placeholder="5000"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="Confirm password"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" Text="Already have an account?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/HomeBeforeLogin.aspx" Text="Home" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" OnClick="submit_btn_Click" EnableViewState="False" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/Login.aspx" Text="Login" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style14">
            &nbsp;</p>
    </form>
</body>
</html>
