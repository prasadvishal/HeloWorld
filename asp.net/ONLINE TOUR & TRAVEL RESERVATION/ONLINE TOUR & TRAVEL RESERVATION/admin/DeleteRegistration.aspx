<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="DeleteRegistration.aspx.cs" Inherits="admin_DeleteRegistration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-image: url(../IMAGES/Sunflower Bkgrd.jpg); background-color: transparent">
        <tr>
            <td align="center" colspan="2" style="height: 21px; background-color: #ffcc00">
                <asp:Label ID="Label7" runat="server" ForeColor="Blue" Style="font-style: normal"
                    Text="REGISRATION&INFO"></asp:Label></td>
            <td style="color: #000000; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px" valign="top">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Text="search" OnClick="btnsearch_Click" /></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 26px;">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
            <td style="width: 165px; height: 26px;">
                <asp:TextBox ID="txtpsw" runat="server"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label4" runat="server" Text="firstname"></asp:Label></td>
            <td style="width: 165px">
                <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
                <asp:Label ID="Label5" runat="server" Text="Lastname"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtlast" runat="server"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
                <asp:Label ID="Label8" runat="server" Text="City"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label></td>
            <td style="width: 165px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label11" runat="server" Text="Pincode"></asp:Label></td>
            <td style="width: 165px">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label></td>
            <td style="width: 165px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label13" runat="server" Text="Phone"></asp:Label></td>
            <td style="width: 165px">
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 24px">
                <asp:Label ID="Label14" runat="server" Text="Question"></asp:Label></td>
            <td style="width: 165px; height: 24px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>what is your petname?</asp:ListItem>
                    <asp:ListItem>your fav.actor?</asp:ListItem>
                    <asp:ListItem>your licky no?</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList></td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
                <asp:Label ID="Label15" runat="server" Text="Answer"></asp:Label></td>
            <td style="width: 165px; height: 21px">
                <asp:TextBox ID="txtans" runat="server"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
            </td>
            <td style="width: 165px">
                <asp:Label ID="message" runat="server" ForeColor="Red" Text="message"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
            </td>
            <td style="width: 165px; height: 21px">
                <asp:Button ID="btndelete" runat="server" Text="delete" OnClick="btndelete_Click" /></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
            </td>
            <td style="width: 165px">
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

