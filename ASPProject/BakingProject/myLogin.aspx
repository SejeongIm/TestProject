<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="myLogin.aspx.cs" Inherits="BakingProject.myLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 357px;
        }
        .auto-style5 {
            width: 90px;
        }
        .auto-style6 {
            width: 196px;
        }
        .auto-style7 {
            width: 90px;
            height: 52px;
        }
        .auto-style8 {
            width: 196px;
            height: 52px;
        }
        .auto-style9 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>로그인</h2>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">아이디</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td rowspan="2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="로그인" Width="68px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">비밀번호</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" />
                </td>
                <td class="auto-style9"></td>
            </tr>
        </table>
        <br />

        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>
