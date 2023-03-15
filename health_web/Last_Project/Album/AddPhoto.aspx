<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddPhoto.aspx.cs" Inherits="Last_Project.Album.AddPhoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 668px;
    }
    .auto-style3 {
        width: 121px;
        text-align: center;
    }
    .auto-style4 {
        width: 121px;
        height: 30px;
        text-align: center;
    }
    .auto-style5 {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>사진 추가하기</h2>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">사진 제목</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="사진 제목을 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">사진 설명</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="90%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">작성자</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">비밀번호</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">이미지</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="사진 올리기" OnClick="Button5_Click" />
&nbsp;<asp:Button ID="Button6" runat="server" Text="앨범 보기" CausesValidation="False" PostBackUrl="~/Album/List.aspx" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #0000FF"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
