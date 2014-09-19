<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReservationbyTypes.aspx.cs" Inherits="DemoPages_ReservationbyTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Description" DataValueField="EventCode"></asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SpecialEvent_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" PageSize="5">
        <Columns>
            <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
        </Columns>
        <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPrevious" NextPageText="Next" PageButtonCount="6" PreviousPageText="Back" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Reservation_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
</asp:Content>

