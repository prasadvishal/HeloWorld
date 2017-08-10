<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page"  Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <table style="border-right: #3399ff 1px solid; border-top: #3399ff 1px solid;
        background-color:#ff9999; border-left: #3399ff 1px solid;
        width: 273px; border-bottom: #3399ff 1px solid" align="center">
        <tr>
            <td align="center" colspan="3" style="color:#66cc33;" class="td">
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold;" Text="Login" CssClass="lbl"></asp:Label></td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="username is   required">*</asp:RequiredFieldValidator></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                    ErrorMessage="Password   is   required">*</asp:RequiredFieldValidator></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                &nbsp;&nbsp;
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />&nbsp;
                </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/forgetpassword.aspx" Text="Forget password" CausesValidation="False" /></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
                <asp:Button ID="Button3" runat="server" PostBackUrl="~/Changepassword.aspx" Text="Change password" CausesValidation="False" /></td>
            <td style="height: 26px">
            </td>
        </tr>
    </table>
    &nbsp;
</asp:Content>

