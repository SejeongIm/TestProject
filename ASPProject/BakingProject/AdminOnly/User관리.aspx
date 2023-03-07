<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="User관리.aspx.cs" Inherits="BakingProject.AdminOnly.상품관리" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 85%;
        }
        .auto-style3 {
            color: #0000CC;
        }
        .auto-style4 {
            width: 256px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h3>회원 관리하기</h3>
         계정 선택 :&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnDataBound="DropDownList1_DataBound" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" Text="계정 수정" OnClick="Button1_Click" />
        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" 
            Text="계정 삭제" OnClientClick="return confirm('정말로 삭제하시겠습니까?');" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="계정 등록" />
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="화면 초기화" />
        &nbsp;&nbsp;
        <br />
        &nbsp;<hr />
        <br />
        <table class="auto-style2">
            <tr>
                <td>UserID</td>
                <td class="auto-style4">
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td class="auto-style4">
        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>이름</td>
                <td class="auto-style4">
        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td class="auto-style4">
        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Field</td>
                <td class="auto-style4">
        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <strong>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </strong>
        <br />
        <br />
    </div>
</asp:Content>
