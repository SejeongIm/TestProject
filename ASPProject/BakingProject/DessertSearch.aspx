<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DessertSearch.aspx.cs" Inherits="BakingProject.DessertSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #FF33CC;
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>디저트 검색</h2><hr /><br />
        <strong><span class="auto-style5">cafeID 검색:</span></strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button5" runat="server" Text="검색" OnClick="Button5_Click" />
        <br />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
