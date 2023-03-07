<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="회원확인page.aspx.cs" Inherits="BakingProject.회원확인page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
            background-color: #CC9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>회원 정보 확인</h2>
        회원 선택 :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="UserID" OnDataBound="DropDownList1_DataBound">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT [UserID], [Name] FROM [People]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserID" DataSourceID="SqlDataSource2" GridLines="Both">
            <EditItemTemplate>
                UserID:
                <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                field:
                <asp:TextBox ID="fieldTextBox" runat="server" Text='<%# Bind("field") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                일치하는 데이터가 없습니다.
            </EmptyDataTemplate>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                선택된 회원 정보
            </HeaderTemplate>
            <InsertItemTemplate>
                UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                field:
                <asp:TextBox ID="fieldTextBox" runat="server" Text='<%# Bind("field") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<table class="auto-style4" style="border-collapse: collapse">
                    <tr>
                        <td class="auto-style6" style="border: 1px solid #800000">아이디</td>
                        <td style="border: 1px solid #800000">
                            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                        </td>
                        <td class="auto-style6" style="border: 1px solid #800000">연락처</td>
                        <td style="border: 1px solid #800000">
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="border: 1px solid #800000">이름</td>
                        <td style="border: 1px solid #800000">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td class="auto-style6" style="border: 1px solid #800000">분야</td>
                        <td style="border: 1px solid #800000">
                            <asp:Label ID="fieldLabel" runat="server" Text='<%# Bind("field") %>' />
                        </td>
                    </tr>
                </table>
                <br />

            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [People] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="UserID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
