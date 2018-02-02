<%@ Page Title="User Profile - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Job_Portal_Web_App.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td><asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label></td>            
        </tr>
        <tr>
            <td height="200px">
                <table style="width: 100%">
                    <tr>
                        <td><br /><br /><asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="100%" HorizontalAlign="Left" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Font-Size="12px">
                            <FieldHeaderStyle Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="vName" HeaderText="Name" SortExpression="vName" />
                    <asp:BoundField DataField="vSurname" HeaderText="Surname" SortExpression="vSurname" />
                    <asp:BoundField DataField="vAddress" HeaderText="Address" SortExpression="vAddress" />
                    <asp:BoundField DataField="vPhoneNumber" HeaderText="PhoneNumber" SortExpression="vPhoneNumber" />
                    <asp:BoundField DataField="vEmail" HeaderText="Email" SortExpression="vEmail" />
                    <asp:BoundField DataField="dDateOfBirth" HeaderText="Date of Birth" SortExpression="dDateOfBirth" DataFormatString="{0:dd/MMM/yyyy}" />
                    <asp:BoundField DataField="vQualification" HeaderText="Qualification" SortExpression="vQualification" />
                    <asp:BoundField DataField="vCountry" HeaderText="Country" SortExpression="vCountry" />
                </Fields>
                            <RowStyle HorizontalAlign="Center" />
                </asp:DetailsView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalWebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tblUsers] WHERE ([vUsername] = @vUsername)">
                    <SelectParameters>
                        <asp:SessionParameter Name="vUsername" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                        </td>
                        <td valign="top">
                            <img alt="" src="images/profile%20pic.png" style="width: 200px; height: 200px" /></td>
                    </tr>
                </table>
                
            </td>            
        </tr>
        
    </table>
</asp:Content>
