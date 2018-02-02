<%@ Page Title="Resume Builder - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ResumeBuilder.aspx.cs" Inherits="Job_Portal_Web_App.ResumeBuilder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <td><h6>Resume Builder</h6></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="5" cellpadding="5">
  <tbody>
    <tr>
      <td align="right"><asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
          <br />
          <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Personal Information:</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Name:</font></td>
      <td><asp:TextBox ID="Name" runat="server" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="A Name is required." Text="*" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Surname:</font></td>
      <td><asp:TextBox ID="Surname" runat="server" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="SurnameValidator" runat="server" ErrorMessage="A Surname is required." Text="*" ControlToValidate="Surname" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Address:</font></td>
		<td><asp:TextBox ID="Address" runat="server" CssClass="txtbox" Rows="5" TextMode="MultiLine" Width="170px"></asp:TextBox></td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Phone Number:</font></td>
      <td><asp:TextBox ID="Phone" runat="server" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="PhoneValidator" runat="server" ErrorMessage="A phone is required." Text="*" ControlToValidate="Phone" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*E-Mail Address:</font></td>
      <td><asp:TextBox ID="Email" runat="server" CssClass="txtbox" TextMode="Email"></asp:TextBox><asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="An Email is required." Text="*" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Date of Birth:</font></td>
      <td><asp:TextBox ID="DateOfBirth" runat="server" CssClass="txtbox" TextMode="DateTime" Width="172px"></asp:TextBox></td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Qualification Information:</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">High School:</font></td>
      <td><asp:TextBox ID="HighSchool" runat="server" CssClass="txtbox"></asp:TextBox>&nbsp;(Example: 80%)</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Graduation:</font></td>
      <td><asp:TextBox ID="Graduation" runat="server" CssClass="txtbox"></asp:TextBox>&nbsp;(Example: B.Sc Soft.Eng. - 3.9 GPA)</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Post Graduation:</font></td>
      <td><asp:TextBox ID="PostGraduation" runat="server" CssClass="txtbox"></asp:TextBox>&nbsp;(Example M.Sc Soft.Eng. - 3.9 GPA)</td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Upload Resume File:</strong></font></td>
      <td valign="top"></td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Select a Resume File:</font><br />.doc/.docx/.pdf/.txt files only.</td>
      <td><br /><asp:FileUpload ID="ResumeFileUpload" runat="server" CssClass="txtbox" />
          <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ResumeFileUpload" ErrorMessage="Please select a Resume file."></asp:RequiredFieldValidator>
          <br /><asp:Label ID="FileErrorLabel" runat="server" ForeColor="Red"></asp:Label></td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td>
          <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="txtbox" OnClick="Submit_Click" /></td>
    </tr>
  </tbody>
</table>
</td>
          </tr>        
          
        </tbody>
      </table>
</asp:Content>
