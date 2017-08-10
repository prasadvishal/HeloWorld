<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="BookingCancellation.aspx.cs" Inherits="admin_BookingCancellation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td>
                DATE FROM
                <asp:TextBox ID="TextBox1" runat="server" Width="99px" Enabled="False"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/IMAGES/DatePicker.gif" onclick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                TO
                
                <asp:TextBox ID="TextBox2" runat="server" Width="98px" Enabled="False"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Show" />
                <asp:Calendar ID="Calendar2" runat="server" Visible="False" 
                    onselectionchanged="Calendar2_SelectionChanged"></asp:Calendar>   
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/IMAGES/DatePicker.gif" onclick="ImageButton2_Click" 
                    style="height: 16px; width: 20px;" />
               </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingid"
                    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="bookingid" HeaderText="ID" ReadOnly="True" SortExpression="bookingid" />
                        <asp:BoundField DataField="bookingdate" HeaderText="BDATE" ReadOnly="True" SortExpression="bookingdate" />
                        <asp:BoundField DataField="username" HeaderText="USER" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="packageid" HeaderText="PCK ID" ReadOnly="True" SortExpression="packageid" />
                        <asp:CheckBoxField DataField="iscancelled" HeaderText="Is Cancelled" SortExpression="iscancelled" />
                        <asp:BoundField DataField="cancellationdate" HeaderText="CancelDate" SortExpression="cancellationdate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    DeleteCommand="DELETE FROM [booking] WHERE [bookingid] = @bookingid" InsertCommand="INSERT INTO [booking] ([bookingdate], [username], [packageid], [iscancelled], [cancellationdate]) VALUES (@bookingdate, @username, @packageid, @iscancelled, @cancellationdate)"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [bookingid], [bookingdate], [username], [packageid], [iscancelled], [cancellationdate] FROM [booking] WHERE (([bookingdate] >= @bookingdate) AND ([bookingdate] <= @bookingdate2))"
                    UpdateCommand="UPDATE [booking] SET [iscancelled] = @iscancelled, [cancellationdate] = @cancellationdate WHERE [bookingid] = @bookingid">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="bookingdate" PropertyName="Text"
                            Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox2" Name="bookingdate2" PropertyName="Text"
                            Type="DateTime" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="bookingid" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookingdate" Type="DateTime" />
                        <asp:Parameter Name="iscancelled" Type="Boolean" />
                        <asp:Parameter Name="cancellationdate" Type="DateTime" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookingdate" Type="DateTime" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="packageid" Type="Int32" />
                        <asp:Parameter Name="iscancelled" Type="Boolean" />
                        <asp:Parameter Name="cancellationdate" Type="DateTime" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

