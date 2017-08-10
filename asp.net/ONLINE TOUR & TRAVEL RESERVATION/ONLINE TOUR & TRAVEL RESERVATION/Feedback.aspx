<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-right: #3399ff 1px solid; border-top: #3399ff 1px solid; background-color:#ffffcc;
        border-left: #3399ff 1px solid; width: 273px; border-bottom: #3399ff 1px solid">
        <tr>
            <td align="center" colspan="3" style="color: #66cc33; background-color: #ff9999">
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold; color: #0033ff" Text="FEEDBACK"></asp:Label></td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label1" runat="server" Text="Feedid"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfeedid"
                    ErrorMessage="feedid  is   required">*</asp:RequiredFieldValidator></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtfeedid" runat="server"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label2" runat="server" Text="Feeddate"></asp:Label></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtfeeddate" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Remark"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage=" Remark is required" ControlToValidate="txtremark">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="CustomValidator">*</asp:CustomValidator>
            </td>
            <td>
                <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Width="147px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="message" runat="server" ForeColor="Red" Text="message"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="save" /></td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

