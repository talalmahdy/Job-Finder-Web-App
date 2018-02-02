<%@ Page Title="Password Recovery - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Job_Portal_Web_App.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="maintxtheading">
        Forgot Your Password?</p>
    <tr>
            <td> <p class="maintxt"> Enter your Username in the field below and we will send your Password at the Email Address you provided us during Registration.</p>
    <p class="maintxt"> <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label><br /><br />
                <font size="2px" style="font-weight: bold">Username: </font>
                <asp:TextBox ID="Username" runat="server" CssClass="txtbox"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Username"></asp:RequiredFieldValidator>&nbsp;
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="txtbox" OnClick="SubmitButton_Click" /></p><br />
            </td>
          </tr>
    
    
</asp:Content>
