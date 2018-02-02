<%@ Page Title="Job Details - EBLA" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="JobDetails.aspx.cs" Inherits="Job_Portal_Web_App.JobDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><asp:DetailsView ID="DetailsView1" runat="server" Height="50px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
        <FieldHeaderStyle Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="iJid" HeaderText="Job ID: " InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
            <asp:BoundField DataField="vJobTitle" HeaderText="Job Title: " SortExpression="vJobTitle" />
            <asp:BoundField DataField="tDescription" HeaderText="Description: " SortExpression="tDescription" />
            <asp:BoundField DataField="dLastDate" HeaderText="Deadline: " SortExpression="dLastDate" />
            <asp:BoundField DataField="iNoOfPosts" HeaderText="No. Of Posts: " SortExpression="iNoOfPosts" />
            <asp:BoundField DataField="vRequiredQualification" HeaderText="Qualification Required: " SortExpression="vRequiredQualification" />
            <asp:BoundField DataField="vRequiredExperience" HeaderText="Experience Required: " SortExpression="vRequiredExperience" />
        </Fields>
        <RowStyle Font-Size="12px" Height="24px" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalWebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tblJobs] WHERE ([iJid] = @iJid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="iJid" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><asp:Button ID="ApplyNowButton" runat="server" Text="Apply Now" CssClass="txtbox" OnClick="ApplyNowButton_Click" />

</asp:Content>
