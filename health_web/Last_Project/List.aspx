<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Last_Project.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>건강 공유 방명록</h2>
    <br />
    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/write.gif" Height="36px" OnClick="ImageButton1_Click" Width="67px" PostBackUrl="~/Write.aspx" />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="seq" DataSourceID="SqlDataSource1" ForeColor="Black"  Width="689px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnDeleteCommand="DataList1_DeleteCommand1" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F7DE" />
            <ItemTemplate>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/clip.jpg" />
                &nbsp;<strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                </strong>
                <br />
                방문이 (<asp:Label ID="Label6" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
                ) :
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                &nbsp;([<asp:HyperLink ID="HyperLink9" runat="server" Text='<%# Eval("email") %>'></asp:HyperLink>
                )
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("seq") %>' CommandName="Delete">삭제</asp:LinkButton>
                <br />
                언&nbsp; 제 :
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("gDate", " {0:yyyy-MM-dd HH:mm}") %>'></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("body") %>'></asp:Label>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [GuestBook] ORDER BY [seq] DESC"></asp:SqlDataSource>
        <br />
    </div>
    <br />
    <br />
</asp:Content>
