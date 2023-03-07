<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="BakingProject.MemberOnly.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            color: #663300;
            font-size: large;
        }
    .auto-style10 {
        color: #FF0000;
    }
    .auto-style8 {
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        


        <h2 class="auto-style6">★설문조사★</h2>
        1. 카페를 가입하게 된 경로
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
            <asp:ListItem>홍보</asp:ListItem>
            <asp:ListItem>검색</asp:ListItem>
            <asp:ListItem>친구 소개</asp:ListItem>
            <asp:ListItem>기타</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        2. 카페를 가입한 목적 :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        3. 좋아하는 디저트와 개발하고 싶은 디저트 종류<asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
            <asp:ListItem>빵</asp:ListItem>
            <asp:ListItem>케이크</asp:ListItem>
            <asp:ListItem>쿠키</asp:ListItem>
            <asp:ListItem>기타</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        4. 하고싶은 말: <br />




        <asp:TextBox ID="TextBox1" runat="server" Rows="3" TextMode="MultiLine" Width="635px"></asp:TextBox>
        <br />
        <asp:Button ID="Button5" runat="server" Text="완료" OnClick="Button5_Click" />
&nbsp;<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style7"></asp:Label>
        </strong>
        <br />
        <h4 class="auto-style10">※주의사항※</h4>
        <span class="auto-style8">- 카페의 다른 회원의 아이디어를 상업적 용도로 이용하거나 
        다른 곳에 당사자 동의 없이 배포하지 않습니다.</span><br class="auto-style8" />
        <span class="auto-style8">- 카페의 회원들은 상대방을 배려하고 존중하는 자세를 지녀야 합니다.</span><br class="auto-style8" />
        <span class="auto-style8">- 욕설 및 타인에게 불쾌함을 줄 수 있는 표현은 사용하지 않습니다.</span><br class="auto-style8" />
        <span class="auto-style8">- 위와 같은 주의사항을 어길시 해당 글은 작성자 동의 없이 삭제될 수 있으며
        법적인 제재가 있을 수 있음을 알아두시길 바랍니다.&nbsp;</span><br />




    </div>
</asp:Content>
