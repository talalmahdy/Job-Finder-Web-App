<%@ Page Title="Jobs - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="Job_Portal_Web_App.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Left" Width="100%" Font-Size="12px" RowStyle-Height="24px">
        <Columns>
            <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
            <asp:BoundField DataField="iNoOfPosts" HeaderText="No. Of Posts" SortExpression="iNoOfPosts" />
            <asp:BoundField DataField="vRequiredQualification" HeaderText="Minimum Qualification" SortExpression="vRequiredQualification" />
            <asp:BoundField DataField="vRequiredExperience" HeaderText="Experience Required" />
            <asp:TemplateField HeaderText="Details">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","JobDetails.aspx?id={0}")%>'>Details</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Apply Now">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","ResumeBuilder.aspx?id={0}")%>'>Apply Now</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalWebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tblJobs] ORDER BY [vJobTitle]"></asp:SqlDataSource>
</asp:Content>