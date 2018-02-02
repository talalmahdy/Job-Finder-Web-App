<%@ Page Title="Sign Up - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="Job_Portal_Web_App.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <td><h6>Sign Up</h6></td>
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
      <td align="right"><font size="2px"><strong>Login Information:</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Username:</font></td>
      <td><asp:TextBox ID="Username" runat="server" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="A Username is required." Text="*" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Password:</font></td>
      <td><asp:TextBox ID="Password" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="A Password is required." Text="*" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Re-Type Password:</font></td>
      <td><asp:TextBox ID="ReTypePassword" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="ReTypePasswordValidator" runat="server" ErrorMessage="You must Re-Type your Password. " Text="*" ControlToValidate="ReTypePassword" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ErrorMessage="The Passwords do not match." ControlToCompare="Password" ControlToValidate="ReTypePassword" ForeColor="Red"></asp:CompareValidator></td>
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
      <td><asp:TextBox ID="DateOfBirth" runat="server" CssClass="txtbox" TextMode="Date" Width="172px"></asp:TextBox></td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Other Information:</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Qualification:</font></td>
      <td><asp:TextBox ID="Qualification" runat="server" CssClass="txtbox"></asp:TextBox></td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Country:</font></td>
      <td><asp:DropDownList ID="Country" runat="server" CssClass="txtbox">
          <asp:ListItem>Kuwait</asp:ListItem>
          <asp:ListItem>Qatar</asp:ListItem>
          <asp:ListItem>UAE</asp:ListItem>
          <asp:ListItem>Saudi Arabia</asp:ListItem>
          <asp:ListItem>Bahrain</asp:ListItem>
          <asp:ListItem>Oman</asp:ListItem>
          <asp:ListItem>Other</asp:ListItem>
          </asp:DropDownList>
          </td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td valign="top"><font size="2px">I agree to the <a href="Terms.aspx" target="_blank">Terms and Conditions</a></font>&nbsp;&nbsp;
          <asp:CheckBox ID="Terms" runat="server" BorderStyle="None" CssClass="txtbox" /><br />
          <asp:CustomValidator ID="TermsValidator" runat="server" ErrorMessage="Please accept the terms and conditions" OnServerValidate="TermsValidator_ServerValidate" ForeColor="Red">Please accept the terms and conditions</asp:CustomValidator>
      </td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td>
          <asp:Button ID="SignUp" runat="server" Text="Sign Up" CssClass="txtbox" OnClick="SignUp_Click" /></td>
    </tr>
  </tbody>
</table>
</td>
          </tr>        
          
        </tbody>
      </table>
</asp:Content>
