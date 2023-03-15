<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CalendarEx.aspx.cs" Inherits="Last_Project.MemberOnly.CalendarEx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            color: #000066;
        }
        .auto-style5 {
            width: 121px;
        }
        .auto-style6 {
            margin-right: 0px;
        }
        .auto-style7 {
            width: 748px;
        }
        .auto-style8 {
            width: 650px;
            height: 200px;
            color: brown;
            text-align: center;
            padding: 0px;
            background-color: lightgreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>일정 관리</h2>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="505px" Width="685px" OnSelectionChanged="Calendar1_SelectionChanged" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" OnDayRender="Calendar1_DayRender">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="500px" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" CssClass="auto-style6" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <FooterTemplate>
            약을 잊지않고 챙겨먹어요~!
        </FooterTemplate>
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            오늘의 일정
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F7DE" />
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style5">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("seq") %>' CommandName="Done" Height="17px" ImageUrl="~/Images/done.gif" Width="15px" />
                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("seq") %>' CommandName="Delete" Height="17px" ImageUrl="~/Images/deleteX.gif" Width="15px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("sTime") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" 
                                                Text='<%# DoneCheck( Eval("toDo"), Eval("hasDone") ) %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    새 할 일: <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
    <br />
    시작시간:<asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
&nbsp;<asp:Button ID="Button5" runat="server" Text="등록" OnClick="Button5_Click" />
    <br />
    <strong>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style4"></asp:Label>
    </strong>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
