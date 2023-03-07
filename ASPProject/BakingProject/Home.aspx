<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BakingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #993300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2> 디저트 개발 웹사이트</h2>
        안녕하세요.<br />
        이곳은 자신이 꿈꿔왔던 디저트를 구상하고 아이디어를 내는 카페입니다.<br />
        <br />
        <strong>회원가입 후
        <br />
        어떤 종류의 디저트를 만들지<br />
        어떤 재료를 사용할 것인지<br />
        가격은 어느 정도가 좋은지<br />
        를 정해 등록할 수 있습니다.</strong><br />
        <strong>&nbsp;</strong><br />
        미래의 나, 혹은 전문 베이커리 기업에 자신의 아이디어를 제출하는 것이 목표입니다.<br />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4"></asp:Label>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="로그아웃" />
        </strong>
        <br />
        
    </div>
</asp:Content>
