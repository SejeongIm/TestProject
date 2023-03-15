<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NoteList.aspx.cs" Inherits="Last_Project.NoteList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            color: #FF3300;
        }
    .auto-style3 {
        text-align: center;
        color: #0000FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style3">한 줄 게시판 </h2> 
    <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataKeyField="nID" DataSourceID="SqlDataSource1" Height="252px" OnDeleteCommand="DataList1_DeleteCommand" OnItemDataBound="DataList1_ItemDataBound" Width="685px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <FooterTemplate>
            건강하고 행복한 하루 되세요 :)
        </FooterTemplate>
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            자신의 건강을 체크하여 한줄로 글을 써 보아요~
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bul1.gif" />
            &nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            &nbsp;(&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
            &nbsp;)&nbsp;<strong><asp:Label ID="contentLabel" runat="server" Text='<%# GetContent( Eval("content") ) %>' />
            </strong>&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl='<%# GetEmail ( Eval("email") ) %>' Text='<%# Eval("email") %>'></asp:HyperLink>
            &nbsp;[<asp:Label ID="nDateLabel" runat="server" Text='<%# Eval("nDate", "{0:yyyy-MM-dd HH:mm}") %>' />
            ]
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("nID") %>' CommandName="Delete">삭제</asp:LinkButton>
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [Note] ORDER BY [nID] DESC"></asp:SqlDataSource>
    <br />
    <hr />
    <br />
    이름 : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;이메일 :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp; <strong>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </strong>
    <br />
    <br />
    내용 :
    <asp:TextBox ID="TextBox3" runat="server" Width="455px"></asp:TextBox>
    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/arrow.gif" OnClick="ImageButton1_Click" />
    &nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/save.gif" OnClick="ImageButton2_Click" />
    <br />
    <br />
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style2"></asp:Label>
    </strong>
    <br />
    <br/>
</asp:Content>
