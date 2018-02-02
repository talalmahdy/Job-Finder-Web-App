<%@ Page Title="Contact Us - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Job_Portal_Web_App.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="88%" border="0" cellspacing="5" cellpadding="5">
              <tbody>
                <tr>
                  <td width="56%" valign="top" class="contactmaintxt"><font size="2px"><h5>Contact Us</h5>EBLA Computer Consultancy<br>
                    14th floor, Behbehani Building, Sharq<br> PO Box 1070, Dasman 15461, Kuwait
                    <br>Telephone Number: (+965) 22426273<br> Fax Number: (+965) 22429234<br>Email: <a href="mailto:info@eblacorp.com" class="emaillink" target="_blank">info@eblacorp.com</a><br><a href="https://www.google.com.tr/maps/place/Behbahani+complex/@29.3799445,47.9901399,18z/data=!3m1!4b1!4m5!3m4!1s0x3fcf84975f36c6db:0x3c26ff9977c61fb6!8m2!3d29.3799445!4d47.9910275?hl=en" class="emaillink" target="_blank">View Location on Map</a></font></td>
                  <td width="40%" valign="bottom"><img src="images/email-gray.png" width="200" height="190" alt=""/></td>
                  </tr>
                <tr>
                  <td colspan="2" align="right"><hr size="0"></td>
                  </tr>
                <tr>
                  <td colspan="2"><table width="571" border="0" cellspacing="5" cellpadding="5">
  <tbody>
    <tr>
      <td colspan="2" class="contacttxt">Feel free to get in touch with your inquiries and one of our friendly staff members will get back to you as soon as possible.</td>
      </tr>
    <tr>
      <td width="168" align="right"><asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label></td>
      <td width="368">&nbsp;</td>
    </tr>
    <tr>
      <td width="168" align="right"><font size="2px">*Name:</font></td>
      <td width="368"><asp:TextBox ID="Name" runat="server" CssClass="txtbox"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Phone Number:</font></td>
      <td><asp:TextBox ID="Phone" runat="server" CssClass="txtbox"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Phone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Email Address:</font></td>
      <td><asp:TextBox ID="Email" runat="server" CssClass="txtbox"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a correct Email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">Attachment:</font></td>
      <td><asp:FileUpload ID="AttachmentUpload" runat="server" CssClass="txtbox" />
        </td>
    </tr>
    <tr>
      <td align="right"><font size="2px">*Your Message:</font></td>
      <td><asp:TextBox ID="MessageBody" runat="server" CssClass="txtbox" Rows="5" TextMode="MultiLine" Width="170px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MessageBody" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td><asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="txtbox" OnClick="SubmitButton_Click" /></td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
</td>
                  </tr>
                </tbody>
  </table>
</asp:Content>
