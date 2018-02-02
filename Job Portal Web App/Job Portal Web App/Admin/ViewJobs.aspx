<%@ Page Title="View Jobs - EBLA Admin" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="Job_Portal_Web_App.Admin.ViewJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="maintxtheading" style="text-align: center">
        View Jobs<br /></p>
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
    <br /><asp:GridView ID="GridView1" runat="server" HorizontalAlign="Left" Width="100%" Font-Size="12px" RowStyle-Height="24px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="iJid" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
            <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
            <asp:BoundField DataField="tDescription" HeaderText="Description" SortExpression="tDescription" />
            <asp:BoundField DataField="dLastDate" HeaderText="Deadline" SortExpression="dLastDate" DataFormatString="{0: dd/MMM/yyyy}" ItemStyle-Wrap="False" />
            <asp:BoundField DataField="iNoOfPosts" HeaderText="No. Of Posts" SortExpression="iNoOfPosts" />
            <asp:BoundField DataField="vRequiredQualification" HeaderText="Qualification Required" SortExpression="vRequiredQualification" />
            <asp:BoundField DataField="vRequiredExperience" HeaderText="Experience Required" SortExpression="vRequiredExperience" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" onclick="return confirm('Are you sure you want to delete this Job?');" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","ViewJobs.aspx?del={0}")%>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","EditJobs.aspx?edit={0}")%>'>Edit</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
<RowStyle Height="24px" HorizontalAlign="Center"></RowStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalWebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tblJobs]"></asp:SqlDataSource>
</asp:Content>
