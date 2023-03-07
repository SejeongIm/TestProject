<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DessertView.aspx.cs" Inherits="BakingProject.DessertView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>디저트 아이디어</h2>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="cafeID" DataSourceID="SqlDataSource1" PageSize="3">
            <Columns>
                <asp:BoundField DataField="cafeID" HeaderText="cafeID" ReadOnly="True" SortExpression="cafeID" />
                <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="ingredient" HeaderText="ingredient" SortExpression="ingredient" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" DeleteCommand="DELETE FROM [Dessert] WHERE [cafeID] = @cafeID" InsertCommand="INSERT INTO [Dessert] ([cafeID], [Dname], [category], [ingredient], [price]) VALUES (@cafeID, @Dname, @category, @ingredient, @price)" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [Dessert]" UpdateCommand="UPDATE [Dessert] SET [Dname] = @Dname, [category] = @category, [ingredient] = @ingredient, [price] = @price WHERE [cafeID] = @cafeID">
            <DeleteParameters>
                <asp:Parameter Name="cafeID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cafeID" Type="String" />
                <asp:Parameter Name="Dname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="ingredient" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Dname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="ingredient" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="cafeID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
</asp:Content>
