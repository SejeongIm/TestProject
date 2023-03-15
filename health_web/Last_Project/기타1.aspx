<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="기타1.aspx.cs" Inherits="Last_Project.기타1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 678px;
        }
        .auto-style3 {
            width: 22px;
        }
        .auto-style4 {
            font-size: small;
            color: #FF6600;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            color: #3333CC;
        }
        .auto-style8 {
            color: #003366;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>요즘 핫 한 AI 스피커 총 집합!</h2>
    <p class="auto-style4"><span class="auto-style6"><strong>***</strong></span> AI 스피커란 IoT 음성인식 인공지능 비서가 탑재된 스피커 및 그 서비스를 총칭하는 용어 입니다</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/Images/ai01.jpg" Width="300px" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="이름" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="264px" Width="367px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="이름" HeaderText="이름" ReadOnly="True" SortExpression="이름" />
                        <asp:BoundField DataField="용도" HeaderText="용도" SortExpression="용도" />
                        <asp:BoundField DataField="가격" HeaderText="가격" SortExpression="가격" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [AI]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <strong>원하는 제품을 선택해주세요 :</strong> 
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="181px">
        <asp:ListItem>헤이 카카오</asp:ListItem>
        <asp:ListItem>구글 홈 미니</asp:ListItem>
        <asp:ListItem>SK NUGU</asp:ListItem>
        <asp:ListItem>기가지니 미니</asp:ListItem>
        <asp:ListItem>클로바 클락</asp:ListItem>
        <asp:ListItem>애플 스마트 스피커</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <h2>제품 상세 설명</h2>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="제품이름" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="제품이름" HeaderText="제품이름" ReadOnly="True" SortExpression="제품이름" />
            <asp:BoundField DataField="설명" HeaderText="설명" SortExpression="설명" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [AI2]"></asp:SqlDataSource>
    <br />
    <br />
    <strong><span class="auto-style7">제품 설명 중 어려운 부분이 있으셨습니까?</span>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="예" GroupName="그룹1" />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="아니요" GroupName="그룹1" />
    </strong>&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="확인" />
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8"></asp:Label>
    </strong>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
