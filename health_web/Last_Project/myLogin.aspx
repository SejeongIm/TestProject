<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myLogin.aspx.cs" Inherits="Last_Project.myLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 361px;
    }
    .auto-style2 {
        width: 12px;
    }
    .auto-style3 {
        color: #CC33FF;
    }
        .auto-style5 {
            width: 394px;
            color: white;
        }
        .auto-style6 {
            color: black;
            width: 1174px;
            height: 24px;
        }
        .auto-style7 {
            width: 232px;
            height: 27px;
        }
        .auto-style8 {
            color: black;
            width: 1174px;
            height: 44px;
        }
        .auto-style9 {
            width: 232px;
            height: 44px;
        }
        .auto-style10 {
            color: black;
            width: 1174px;
            height: 27px;
        }
        .auto-style11 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>로그인</h2><br />

        <table class="auto-style5">
            <tr>
                <td class="auto-style8">아이디</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="2" dir="ltr">
                    <asp:Button ID="Button5" runat="server" Text="로그인" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">비밀번호</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td colspan="2" class="auto-style11">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" style="color: #000000" />
                </td>
            </tr>
        </table>
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style3"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>

</asp:Content>
