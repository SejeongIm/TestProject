<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Write.aspx.cs" Inherits="Last_Project.Write" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style2 {
        width: 149px;
        text-align: center;
    }
        .auto-style3 {
            width: 685px;
            height: 369px;
        }
        .auto-style4 {
            width: 120px;
            text-align: center;
            color: #003300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>건강 공유 방명록 작성</h2> 
    <table class="auto-style3">
        <tr>
            <td class="auto-style4"><strong>방문이</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>메&nbsp; 일</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>제&nbsp; 목</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>내&nbsp; 용</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/list.gif" PostBackUrl="~/List.aspx" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/write.gif" OnClick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;<br />
</asp:Content>
