<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-right: #3399ff 1px solid; border-top: #3399ff 1px solid; background-color:#ffffcc;
        border-left: #3399ff 1px solid; width: 273px; border-bottom: #3399ff 1px solid">
        <tr>
            <td align="center" colspan="3" style="background-color: #ff9999">
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold; color: #0033ff" Text="Forgot password"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label></td>
            <td>
                <asp:DropDownList ID="txtquestion" runat="server">
                    <asp:ListItem>What is your pet name?</asp:ListItem>
                    <asp:ListItem>Your luck number</asp:ListItem>
                    <asp:ListItem>Your fav. actor</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Answer"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></td>
            <td style="width: 3px">
            </td>
        </tr>
    </table>
</asp:Content>

