<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Job_Portal_Web_App.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <td><h6>Login</h6></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="5" cellpadding="5">
  <tbody>
    <tr>
      <td align="right">&nbsp;</td>
      <td><asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label></td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Username</strong></font></td>
      <td><asp:TextBox ID="Username" runat="server" CssClass="txtbox"></asp:TextBox>
          <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Please enter a Username." ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="right"><font size="2px"><strong>Password</strong></font></td>
      <td><asp:TextBox ID="Password" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please enter a Password." ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td><asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="txtbox" OnClick="LoginButton_Click" /></td>
    </tr>
  </tbody>
</table>
</td>
          </tr>        
          
        </tbody>
      </table>
</asp:Content>
