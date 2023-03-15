
<%@ Page Title="" Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Last_Project.Album.Edit" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 500px;
    }
    .auto-style2 {
        width: 67px;
    }
    .auto-style4 {
        width: 67px;
        height: 25px;
    }
    .auto-style5 {
        margin-bottom: 0px;
    }
    .auto-style8 {
        width: 89px;
        height: 25px;
    }
        .auto-style9 {
            color: black;
        }
        .auto-style10 {
            width: 89px;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>사진 추가하기</h2>
<table class="auto-style1">
    <tr>
        <td class="auto-style10">사진 제목</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="사진제목을 입력하세요" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">사진 설명</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">작성자</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server" Rows="5" TextMode="MultiLine" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">이미지</td>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" style="font-weight: 700; color: #000000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Image ID="Image4" runat="server" Width="100%" CssClass="auto-style9" />
        </td>
        <td class="auto-style4">
<asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="수정" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="취소" CausesValidation="False" OnClick="Button2_Click" />
            <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #0000FF"></asp:Label>
        </td>
    </tr>
</table>
<br />
&nbsp;<br />
    <strong>
&nbsp;</strong><br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
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

</asp:Content>
