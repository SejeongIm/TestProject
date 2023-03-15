<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="Last_Project.MemberOnly.Modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 38px;
        width: 131px;
    }
    .auto-style2 {
        width: 271px;
    }
    .auto-style3 {
        height: 38px;
        width: 271px;
    }
    .auto-style4 {
        width: 444px;
    }
    .auto-style5 {
        width: 131px;
    }
        .auto-style6 {
            width: 131px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
 <h2>정보 변경</h2>
 <table border="1" style="border-collapse: collapse" class="auto-style4" >
 <tr>
 <td style="padding: 3px" class="auto-style6">사용할 아이디</td>
 <td style="padding: 3px" class="auto-style5">
     <asp:Label ID="Label3" runat="server"></asp:Label>
 </td>
 </tr>
 <tr>
 <td style="padding: 3px" class="auto-style6">비밀번호</td>
 <td style="padding: 3px" class="auto-style5">
 <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
Display="None" ErrorMessage="[비밀번호] 필수입력"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td style="padding: 3px" class="auto-style6">비밀번호 확인</td>
 <td style="padding: 3px" class="auto-style5">
 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
Display="None" ErrorMessage="[비밀번호 확인] 필수입력"></asp:RequiredFieldValidator>
 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
ControlToValidate="TextBox3" Display="None" ErrorMessage="비밀번호가 일치하지 않습니다"></asp:CompareValidator></td>
 </tr>
 <tr>
 <td style="padding: 3px" class="auto-style6">이름</td>
 <td style="padding: 3px" class="auto-style5">
 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
Display="None" ErrorMessage="[이름] 필수입력"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td style="padding: 3px" class="auto-style6">전화번호</td>
 <td style="padding: 3px" class="auto-style3">
 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
 </td>
 </tr>
 </table><br />
 <asp:Button ID="Button6" runat="server" Text="변경합니다" OnClick="Button6_Click" />&nbsp; <asp:Button ID="Button7" runat="server" CausesValidation="False" Text="Home 으로" OnClick="Button7_Click" /><br />
 <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #CC0066"></asp:Label><br />
 <asp:ValidationSummary ID="ValidationSummary1" runat="server"
DisplayMode="List" ShowMessageBox="True"
ShowSummary="False" />
 <br />
</div>
</asp:Content>
