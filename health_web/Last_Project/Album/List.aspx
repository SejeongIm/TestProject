<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Last_Project.Album.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2>나의 알약 등록하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/write.gif" PostBackUrl="~/Album/AddPhoto.aspx" />
    </h2>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="imgID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" style="text-align: center" Width="678px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            알약 공급기 앨범
        </HeaderTemplate>
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <a href='Show.aspx?imgID=<%# Eval("imgID") %>'><asp:Image ID="Image4" runat="server" Height="150px" ImageUrl='<%# "~/Photos/"+Eval("fName") %>' Width="150px" />
            
            </a>
            <br />
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/clip.jpg" />
            &nbsp;<asp:Label ID="Label2" runat="server" style="font-weight: 700" Text='<%# Eval("title") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            [<asp:Label ID="Label4" runat="server" Text='<%# Eval("pDate","{0:yyyy-MM-dd }") %>'></asp:Label>
            ]<br />
        </ItemTemplate>

        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [imgID], [userID], [name], [title], [fName], [pDate] FROM [Photos] ORDER BY [imgID] DESC">

    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
