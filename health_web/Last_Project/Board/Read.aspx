<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="Last_Project.Board.Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <h3>글 읽기</h3>
    <table>
        <tr>
            <td style="background-color: #FFCC99" >
                작성자</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99">
                작성일자</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:Label ID="Label5" runat="server"></asp:Label>
           </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99">
                제목</td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" >
                내용</td>
            <td style="width: 430px; background-color: #CCCCFF;" >
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" 
                    Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99" >
                파일 첨부</td>
            <td style="width: 430px; background-color: #CCCCFF;" > 
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFCC99"></td>
            <td style="width: 430px; background-color: #CCCCFF;">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/btn_edit.gif" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/btn_reply.gif" />
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/btn_delete.gif" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/btn_list.gif" PostBackUrl="~/Board/List.aspx" />
                &nbsp; 
                </td>
        </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <br />
</div>
</asp:Content>
