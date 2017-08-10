<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="background-image: url(IMAGES/Sunflower Bkgrd.jpg); width: 374px">
        <tr>
            <td align="center" colspan="3" style="height: 21px; background-color: #ffcc33; color: #ffcc33;">
                <asp:Label ID="Label8" runat="server" ForeColor="#8080FF" Style="font-weight: bold;
                    color: #0000ff" Text="REGISRATION "></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 127px; height: 26px">
                <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage=" Username is required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px; height: 26px">
                <asp:TextBox ID="txtUsername" runat="server" Width="123px"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px; height: 21px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                    ErrorMessage=" Password is  required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px; height: 21px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="122px"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password" Width="131px"></asp:Label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                    ControlToValidate="txtconfirm" ErrorMessage="Password &conform are different">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirm"
                    ErrorMessage="Conform password is required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Width="122px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px; height: 21px">
                <asp:Label ID="Label4" runat="server" Text="First Name"></asp:Label></td>
            <td style="width: 254px; height: 21px">
                <asp:TextBox ID="txtfirst" runat="server" Width="123px"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label10" runat="server" Text="Last Name"></asp:Label></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtlast" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px; height: 21px">
                <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress"
                    ErrorMessage=" Address is required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px; height: 21px">
                <asp:TextBox ID="txtaddress" runat="server" Width="123px"></asp:TextBox></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
                    ErrorMessage=" City is required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtcity" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label13" runat="server" Text="State"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstate"
                    ErrorMessage=" State is required">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtstate" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcountry"
                    ErrorMessage="Country is required ">*</asp:RequiredFieldValidator></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtcountry" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label15" runat="server" Text="Pincode"></asp:Label>
                </td>
            <td style="width: 254px">
                <asp:TextBox ID="txtpin" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="enter the email add. in valid  format" 
                    ControlToValidate="txtemail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
            <td style="width: 254px; height: 26px;">
                <asp:TextBox ID="txtemail" runat="server" Width="240px"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label16" runat="server" Text="Phone"></asp:Label></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtphone" runat="server" Width="123px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px; height: 24px">
                <asp:Label ID="Label6" runat="server" Text="Question"></asp:Label></td>
            <td style="width: 254px; height: 24px">
                <asp:DropDownList ID="txtquestion" runat="server">
                    <asp:ListItem>What is your pet name?</asp:ListItem>
                    <asp:ListItem>Your luck number</asp:ListItem>
                    <asp:ListItem>Your fav. actor</asp:ListItem>
                    <asp:ListItem>your fav.place</asp:ListItem>
                </asp:DropDownList></td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Label7" runat="server" Text="Asnwer"></asp:Label></td>
            <td style="width: 254px">
                <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
            </td>
            <td style="width: 254px">
                <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
            </td>
            <td style="width: 254px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
            </td>
            <td style="width: 254px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
            </td>
            <td style="width: 254px">
                <asp:Button ID="btnsubmit" runat="server" ForeColor="#0000C0" OnClick="btnsubmit_Click"
                    Text="Submit" /></td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

