<%@ Page Title="View Resumes - EBLA Admin" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewResumes.aspx.cs" Inherits="Job_Portal_Web_App.Admin.ViewResumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="maintxtheading" style="text-align: center">
        View Resumes<br /></p><br />
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Left" Width="100%" Font-Size="12px" RowStyle-Height="24px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

        <Columns>
            <asp:BoundField DataField="vName" HeaderText="Name" SortExpression="vName" />
            <asp:BoundField DataField="vPhone" HeaderText="Phone" SortExpression="vPhone" />
            <asp:BoundField DataField="vEmail" HeaderText="Email" SortExpression="vEmail" />
            <asp:BoundField DataField="vGraduation" HeaderText="Graduation" SortExpression="vGraduation" />
            <asp:BoundField DataField="vPostGraduation" HeaderText="PostGraduation" SortExpression="vPostGraduation" />
            <asp:BoundField DataField="vJobID" HeaderText="Job ID" SortExpression="vJobID" />
            <asp:TemplateField HeaderText="Download">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.vResumeFile","../Resumes/{0}")%>'>Download</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" onclick="return confirm('Are you sure you want to delete this Resume?');" runat="server" CssClass="link" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iRid","ViewResumes.aspx?del={0}")%>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <RowStyle Height="24px" HorizontalAlign="Center"></RowStyle></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalWebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tblResumes] ORDER BY [vJobID]"></asp:SqlDataSource>
</asp:Content>
