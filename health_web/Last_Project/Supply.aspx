<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Supply.aspx.cs" Inherits="Last_Project.Supply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 300px;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #663300;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
        <h2>알약 공급기</h2> 
        상품 보기 :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnDataBound="DropDownList1_DataBound" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <hr />
        <table class="auto-style2">
            <tr>
                <td>상품 ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>상품명</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>종류</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>색상</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>가격</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #996633"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image4" runat="server" Height="234px" ImageUrl="~/Images/supplyto.jpg" Width="488px" />
        <br />
        <span class="auto-style3"><strong><span class="auto-style4">알약 공급기</span></strong></span><strong>는 고령화 사회 문제가 심해짐에 따라 노인 질병률이 증가하는 현실에 맞춰 제작되었습니다. 노인과 노약자들을 위한 개발품이지만 약을 꾸준히 챙겨 먹어야하는 현대인들에게도 도움을 주고 있습니다.<br />
        </strong><br />
        <hr noshade="noshade" style="color: #800000" />
        <strong><span class="auto-style5">Development item function</span></strong><br />
        모바일 앱과 연동하여 사용합니다!<br />
        원하는 시간에 알람을 맞춰 약을 적절히 복용할 수 있습니다!<br />
        휴대성이 용이한 크기로 사용하기 편리해요!<br />
        모바일 앱과 함께 사용하면 편리함이 UP!<br />
        탈부착이 가능하여 어디서든 사용 가능해요!<br />
        <br />
        <hr style="color: #800000" />
        알약 공급기 외에 간편 약통과 알약 등 다양한 정보를 제공합니다. 원하는 제품이 있으시다면 찾아보시고 구매하세요!<br />
        <br />
        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="https://www.wadiz.kr/web/campaign/detail/71903">알약 공급기 구매처</asp:HyperLink>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
