<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="XMLPage.aspx.cs" Inherits="XML_files_XMLPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


<asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1"></asp:GridView>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML files/XMLDemo.xml" TransformFile="~/XML files/XSLTDemo.xslt"></asp:XmlDataSource>
</asp:Content>