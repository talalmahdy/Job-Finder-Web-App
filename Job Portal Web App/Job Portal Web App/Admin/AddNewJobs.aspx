<%@ Page Title="Add New Jobs - EBLA Admin" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewJobs.aspx.cs" Inherits="Job_Portal_Web_App.Admin.AddNewJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="maintxtheading" style="text-align: center">
        Add New Job</p><br />
    <table cellpadding="5" cellspacing="5" style="width: 100%">
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">&nbsp;</td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Job Title:</td>
            <td>
                <asp:TextBox ID="JobTitle" runat="server" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="JobTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Description:</td>
            <td>
                <asp:TextBox ID="Description" runat="server" CssClass="txtbox" Rows="5" TextMode="MultiLine" Width="170px"></asp:TextBox></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Description" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Deadline:</td>
            <td>
                <asp:TextBox ID="Deadline" runat="server" CssClass="txtbox" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Deadline" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Number of Posts:</td>
            <td>
                <asp:TextBox ID="NoOfPosts" runat="server" CssClass="txtbox" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NoOfPosts" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Qualification Required:</td>
            <td>
                <asp:TextBox ID="QualificationRequired" runat="server" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="QualificationRequired" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 12px; font-weight: bold; width: 50%;">Experience Required:</td>
            <td>
                <asp:TextBox ID="ExperienceRequired" runat="server" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ExperienceRequired" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 50%">&nbsp;</td>
            <td>
                <asp:Button ID="SubmitButton" runat="server" CssClass="txtbox" OnClick="SubmitButton_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 50%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;
    

</asp:Content>
