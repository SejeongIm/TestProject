﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Last_Project.Album.Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 118px;
            text-align: center;
        }
        .auto-style3 {
            color: #000000;
        }
        .auto-style4 {
            width: 118px;
            text-align: center;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>사진 보기</h2>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/modify.gif" OnClick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Left" ImageUrl="~/Images/delete.gif" OnClick="ImageButton2_Click" OnClientClick="return confirm('정말로 삭제하시겠나요?');" />
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/write.gif" PostBackUrl="~/Album/AddPhoto.aspx" />
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/list.gif" PostBackUrl="~/Album/List.aspx" />
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="imgID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            imgID:
            <asp:Label ID="imgIDLabel1" runat="server" Text='<%# Eval("imgID") %>' />
            <br />
            userID:
            <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            pwd:
            <asp:TextBox ID="pwdTextBox" runat="server" Text='<%# Bind("pwd") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            body:
            <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
            <br />
            fName:
            <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            hit:
            <asp:TextBox ID="hitTextBox" runat="server" Text='<%# Bind("hit") %>' />
            <br />
            pDate:
            <asp:TextBox ID="pDateTextBox" runat="server" Text='<%# Bind("pDate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
        </EditItemTemplate>
        <InsertItemTemplate>
            userID:
            <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            pwd:
            <asp:TextBox ID="pwdTextBox" runat="server" Text='<%# Bind("pwd") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            body:
            <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
            <br />
            fName:
            <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            hit:
            <asp:TextBox ID="hitTextBox" runat="server" Text='<%# Bind("hit") %>' />
            <br />
            pDate:
            <asp:TextBox ID="pDateTextBox" runat="server" Text='<%# Bind("pDate") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <table class="auto-style1" style="border-collapse: collapse">
                <tr class="auto-style3">
                    <td class="auto-style2" style="border: 1px solid #C0C0C0">imgID</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("imgID") %>'></asp:Label>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style2" style="border: 1px solid #C0C0C0">name</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style2" style="border: 1px solid #C0C0C0">사진 제목</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border: 1px solid #C0C0C0">사진 설명</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("body") %>' TextMode="MultiLine" Width="95%" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style2" style="border: 1px solid #C0C0C0">조회수</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("hit") %>'></asp:Label>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style2" style="border: 1px solid #C0C0C0">올린 날짜</td>
                    <td style="border: 1px solid #C0C0C0">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pDate") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/Photos/"+Eval("fName") %>' Width="500px" />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [Photos] WHERE ([imgID] = @imgID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="imgID" QueryStringField="imgID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    <br />
    <br />


</asp:Content>
