<%@ Page Title="" Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="CheckPassword.aspx.cs" Inherits="Last_Project.Album.CheckPassword" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>비밀번호 확인</h2>
    <br />
    글 비밀번호
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <br />
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
    </strong>
    <br />
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" />
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/list.gif" PostBackUrl="~/Album/List.aspx" OnClick="ImageButton2_Click" />
    <br />
    <br />
</asp:Content>
