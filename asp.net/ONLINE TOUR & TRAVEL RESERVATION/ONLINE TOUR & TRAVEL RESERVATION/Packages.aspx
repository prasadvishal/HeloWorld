<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Packages" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger"
        ForeColor="Blue" Style="color: #0033ff; background-color: #ffcc33" Text="DISPLAY PACKAGES & INFORMATION"
        Width="339px"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="packageid" 
        DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
        <ItemTemplate>
            <table width="450">
                <tr>
                    <td>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        From &nbsp;<asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>'></asp:Label>
                        To
                        <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="packagedescLabel" runat="server" Text='<%# Eval("packagedesc") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="facilitiesLabel" runat="server" Text='<%# Eval("facilities") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="accomodationLabel" runat="server" Text='<%# Eval("accomodation") %>'></asp:Label>
                        <asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Charges
                        <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Terms &amp; Conditions
                        <asp:Label ID="termsLabel" runat="server" Text='<%# Eval("terms") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <FooterStyle BackColor="Tan" />
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPackages" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [packagemaster]"></asp:SqlDataSource>
</asp:Content>

