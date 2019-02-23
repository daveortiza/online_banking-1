<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Apply-Now.aspx.cs" Inherits="Apply_Now" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <br />
        <div class="row">
            <!--Name Fields-->
            <div class="col-md-2">
                <asp:Label ID="Name_lbl" runat="server" Text="Name"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="fname_tb" runat="server" placeholder="First Name" ToolTip="Enter First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="fname_rqval" runat="server" ErrorMessage="First name field cannot be empty" Text="*" ControlToValidate="fname_tb" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="mname_tb" runat="server" placeholder="Middle Name" ToolTip="Enter First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="mname_rqval" runat="server" ErrorMessage="Middle name field cannot be empty" Text="*" ControlToValidate="mname_tb" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="lname_tb" runat="server" placeholder="Last Name" ToolTip="Enter First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lname_rqval" runat="server" ErrorMessage="Last name field cannot be empty" Text="*" ControlToValidate="lname_tb" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <!--Dob Field-->
            <div class="col-md-2">
                <asp:Label ID="dob_lbl" runat="server" Text="Date of birth"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="dob_tb" runat="server" placeholder="dd/mmm/yyyy"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="dob_Tb_CalendarExtender" runat="server" TargetControlID="dob_tb" Format="dd/MMM/yyyy" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="Dob_rqval" runat="server" ControlToValidate="dob_tb" Text="*" ErrorMessage="Date of birth field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Gender Field-->
            <div class="col-md-2">
                <asp:Label ID="gender_lbl" runat="server" Text="Gender"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="genderddl" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="gender_reqval" runat="server" ControlToValidate="genderddl" ErrorMessage="Select Gender" InitialValue="Select" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--email Id Field-->
            <div class="col-md-2">
                <asp:Label ID="email_lbl" runat="server" Text="Email ID"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="email_tb" runat="server" placeholder="example@abc.com"></asp:TextBox>
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="email_reqval" runat="server" ErrorMessage="Email Id field cannot be empty" ControlToValidate="email_tb" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="email_regval" runat="server" ErrorMessage="Email Id is not Valid" ControlToValidate="email_tb" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Mobile Field-->
            <div class="col-md-2">
                <asp:Label ID="mobile_no_lbl" runat="server" Text="Mobile number"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="mobile_tb" runat="server" placeholder="+91-xxx-xxx-xxxx"></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="mobile_tb_FilteredTextBoxExtender" runat="server" FilterInterval="10" FilterType="Numbers" TargetControlID="mobile_tb" />
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="mobile_reqval" runat="server" ErrorMessage="Mobile Number Field cannot be empty" ControlToValidate="mobile_tb" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="mobile_regval" runat="server" ErrorMessage="Mobile Field cannot be empty" ControlToValidate="mobile_tb" ValidationExpression="^[789]\d{9}$" ForeColor="Red">*</asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Address Field-->
            <div class="col-md-2">
                <asp:Label ID="address_lbl" runat="server" Text="Address"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="address_tb" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="add_rqval" runat="server" ErrorMessage="Address field cannot be empty" Text="*" ControlToValidate="address_tb" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Deposit Field-->
            <div class="col-md-2">
                <asp:Label ID="deposit_lbl" runat="server" Text="Intial Deposit"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="deposit_tb" runat="server" placeholder="5000"></asp:TextBox>
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="deposit_reqval" runat="server" ControlToValidate="deposit_tb" Text="*" ErrorMessage="Deposit field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Password Field-->
            <div class="col-md-2">
                <asp:Label ID="passwd_lbl" runat="server" Text="Password"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="passwd_tb" runat="server" TextMode="Password"></asp:TextBox>
                <ajaxToolkit:PasswordStrength ID="passwd_tb_PasswordStrength" runat="server" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumUpperCaseCharacters="1" TargetControlID="passwd_tb" RequiresUpperAndLowerCaseCharacters="True" StrengthIndicatorType="BarIndicator" PreferredPasswordLength="8" />
            </div>
            <div class="col-md-8">
                <asp:RequiredFieldValidator ID="passwd_reqval" runat="server" Text="*" ErrorMessage="Password field cannot be empty" ForeColor="Red" ControlToValidate="passwd_tb"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <!--Confirm Password Field-->
            <div class="col-md-2">
                <asp:Label ID="cnfrmPasswd_lbl" runat="server" Text="Confirm password"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="cnfrmPasswd_tb" runat="server" TextMode="Password"></asp:TextBox>
                <ajaxToolkit:PasswordStrength ID="cnfrmPasswd_tb_PasswordStrength" runat="server" BehaviorID="cnfrmPasswd_tb_PasswordStrength" PreferredPasswordLength="8" RequiresUpperAndLowerCaseCharacters="True" TargetControlID="cnfrmPasswd_tb" />
            </div>
            <div class="col-md-2 text-left">
                <asp:RequiredFieldValidator ID="cnfrmPasswd_reqval" runat="server" ErrorMessage="Confirm password field cannot be empty" ControlToValidate="cnfrmPasswd_tb" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cnfrmPasswd_compval" runat="server" ErrorMessage="Passwords does not matches" ControlToCompare="passwd_tb" ControlToValidate="cnfrmPasswd_tb" ForeColor="Red">*</asp:CompareValidator>
            </div>
            <div class="col-md-4 text-left">
            </div>
        </div>
        <br />
        <div class="row">
            <!--Submit Button-->
            <div class="col-md-4"></div>
            <div class="col-md-3">
                <asp:Button ID="submit_btn" runat="server" Text="Submit" OnClick="submit_btn_Click" EnableViewState="False" PostBackUrl="~/Login.aspx" />
            </div>
            <div class="col-md-2 text-center">
            </div>
        </div>
        <br />
        <div class="row">
            <!--Validatiion Summary-->
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
</asp:Content>
