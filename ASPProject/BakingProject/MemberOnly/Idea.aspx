<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Idea.aspx.cs" Inherits="BakingProject.MemberOnly.아이디어_등록하기" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
    .auto-style7 {
        color: #663300;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>아이디어 등록하기</h2>
        <strong>※개발할 아이디어를 등록해보아요※</strong><br />
        <br />
        <table class="auto-style6">
            <tr>
                <td>카페ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="[아이디] 필수입력" ControlToValidate="TextBox1" Display="None">
    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>디저트 이름</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="[디저트 이름] 필수입력" ControlToValidate="TextBox2" Display="None">
    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>디저트 종류</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="[디저트 종류] 필수입력" ControlToValidate="TextBox3" Display="None">
    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>디저트 주재료</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>가격</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />

        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="등록합니다" />
&nbsp;<asp:Button ID="Button6" runat="server" CausesValidation="False" OnClick="Button6_Click" Text="Home 으로" />

        <br />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style7"></asp:Label>
        </strong>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>
