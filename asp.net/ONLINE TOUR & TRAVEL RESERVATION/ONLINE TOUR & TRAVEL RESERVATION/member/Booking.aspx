<%@ Page Language="C#" MasterPageFile="~/member/member.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="member_Booking" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-image: url(../IMAGES/Sunflower Bkgrd.jpg); background-color: transparent">
        <tr>
            <td align="center" colspan="2" style="height: 21px; background-color: #ffcc00">
                <asp:Label ID="Label1" runat="server" ForeColor="Blue" Style="font-weight: bold;
                    font-style: normal" Text="Booking"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 26px">
                <asp:Label ID="Label4" runat="server" Text="bookingdate"></asp:Label></td>
            <td style="width: 112px; height: 26px">
                <asp:Label ID="txtDate" runat="server"></asp:Label></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 26px;">
                <asp:Label ID="Label3" runat="server" Text="username"></asp:Label></td>
            <td style="width: 112px; height: 26px;">
                <asp:Label ID="txtUsername" runat="server"></asp:Label></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
                <asp:Label ID="Label5" runat="server" Text="packageid"></asp:Label></td>
            <td style="width: 112px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsPAckage" DataTextField="title"
                    DataValueField="packageid">
                </asp:DropDownList><asp:SqlDataSource ID="dsPAckage" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [title], [packageid] FROM [packagemaster]"></asp:SqlDataSource>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px;">
                </td>
            <td style="width: 112px; height: 21px;">
                </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 21px">
            </td>
            <td style="width: 112px; height: 21px">
                </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
            </td>
            <td style="width: 112px">
                <asp:Label ID="message" runat="server" ForeColor="Red" Text="message"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 102px">
            </td>
            <td style="width: 112px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" /></td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

