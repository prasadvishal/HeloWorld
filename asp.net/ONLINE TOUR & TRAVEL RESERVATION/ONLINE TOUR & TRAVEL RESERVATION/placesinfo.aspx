<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="placesinfo.aspx.cs" Inherits="placesinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="packageid" DataSourceID="SqlDataSource1" style="background-image: url(IMAGES/Sunflower Bkgrd.jpg)">
        <ItemTemplate>
            <table style="border-right: #999933 1px solid; border-top: #999933 1px solid; border-left: #999933 1px solid;
                border-bottom: #999933 1px solid" width="500">
                <tr>
                    <td bgcolor="#999933">
                        <asp:Label ID="titleLabel" runat="server" Font-Bold="True" Text='<%# Eval("title") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("packageid") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        ===========================<br />
                        Start Date
                        <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>'></asp:Label>
                        End Date
                        <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>'></asp:Label><br />
                        ===========================<br />
                        <br />
                        <asp:Label ID="packagedescLabel" runat="server" Text='<%# Eval("packagedesc") %>'></asp:Label><br />
                        Facilitis<br />
                        <asp:Label ID="facilitiesLabel" runat="server" Text='<%# Eval("facilities") %>'></asp:Label><br />
                        Accomodation<br />
                        <asp:Label ID="accomodationLabel" runat="server" Text='<%# Eval("accomodation") %>'></asp:Label><br />
                        Days:
                        <asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>'></asp:Label><br />
                        charges:
                        <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>'></asp:Label><br />
                        discount:
                        <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>'></asp:Label><br />
                        terms:
                        <asp:Label ID="termsLabel" runat="server" Text='<%# Eval("terms") %>'></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        PLACE INFORMATION</td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 11px">
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <table width="100%">
                                    <tr>
                                        <td bgcolor="#ff3333" colspan="3">
                                            <asp:Label ID="placenameLabel" runat="server" Text='<%# Eval("placename") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="placedescLabel" runat="server" Text='<%# Eval("placedesc") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl='<%# Eval("placephoto") %>'
                                                Width="225px" /></td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>'></asp:Label>
                                            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                            <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>'></asp:Label></td>
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
                                            MAJOR CITY
                                            <asp:Label ID="majorcityLabel" runat="server" Text='<%# Eval("majorcity") %>'></asp:Label></td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            DISTNACE FROM MAJOR CITY
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("distancecity") %>'></asp:Label></td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;<br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [placename], [placedesc], [placephoto], [district], [state], [country], [majorcity], [tradition], [music], [seqeunce], [Description], [distancecity], [railway], [privatetravells], [airport], [locality] FROM [ViewPackages] WHERE ([packageid] = @packageid) ORDER BY [seqeunce]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="packageid" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="Yellow" />
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [packagemaster] ORDER BY [startdate]"></asp:SqlDataSource>
</asp:Content>

