<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Last_Project.Board.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 625px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3>글 수정하기</h3>
    <table class="auto-style1">
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3" >
                작성자</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="작성자를 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3">
                제목</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:TextBox ID="TextBox3" runat="server" Width="90%"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                     ErrorMessage="제목을 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
           </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3">
                내용</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" 
                    Width="95%" CssClass="auto-style2"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3" >
                첨부파일</td>
            <td style="width: 430px; background-color: #CCCCFF;" >
                <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">파일 삭제</asp:LinkButton>
                <br />
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3" >
                파일 수정</td>
            <td style="width: 430px; background-color: #CCCCFF;" > 
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;<strong>*먼저 위의 파일 삭제</strong></td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" class="auto-style3"></td>
            <td style="width: 430px; background-color: #CCCCFF;"><asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/btn_edit.gif" onclick="ImageButton1_Click" /> &nbsp; 
                <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                    ImageUrl="~/Images/btn_list.gif" PostBackUrl="~/Board/List.aspx" />
           </td>
        </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <br />
</div>
</asp:Content>
