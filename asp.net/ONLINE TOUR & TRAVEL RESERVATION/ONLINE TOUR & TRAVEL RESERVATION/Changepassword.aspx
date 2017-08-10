<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-right: #3399ff 1px solid; border-top: #3399ff 1px solid; background-image: url(IMAGES/Sunflower Bkgrd.jpg);
        border-left: #3399ff 1px solid; width: 273px; border-bottom: #3399ff 1px solid">
        <tr>
            <td align="center" colspan="3" style="height: 21px; background-color: #ffcc33">
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold; color: #0033ff" Text="change password"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Old Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm Password" Width="129px"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
                <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="Button1_Click" Text="Submit" /></td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

