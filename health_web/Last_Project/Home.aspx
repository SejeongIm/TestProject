<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Last_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Welcome To my home Page</h2><br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">현재 시간</asp:LinkButton>
&nbsp; <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" style="color: #FF0066"></asp:Label>
    </strong>
    <br />
    <br />
    <br />
    * <span class="auto-style3">관리자: <strong>임세정 (2020-31-060)</strong></span><br />
    <br />
    <br />
    </div>

</asp:Content>
