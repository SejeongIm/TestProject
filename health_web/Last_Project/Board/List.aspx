<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Last_Project.Board.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>답변형 게시판/ 자료실</h2>
        <p class="auto-style1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/btn_write.gif" PostBackUrl="~/Board/Write.aspx" Width="80px" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="seq" DataSourceID="SqlDataSource1" PageSize="3" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="684px">
            <Columns>
                <asp:BoundField DataField="seq" HeaderText="번호" InsertVisible="False" ReadOnly="True"
                        SortExpression="seq">
                   <HeaderStyle Width="60px" />
                   <ItemStyle HorizontalAlign="Center" />
                         </asp:BoundField>

                         <asp:TemplateField HeaderText="제목" SortExpression="title">
                             <ItemTemplate>
                             <%# ShowDepth((int)Eval("depth")) %>
                             <%# ShowReplyIcon((int)Eval("inner_id")) %>
                             <%# ShowTitle( Eval("seq").ToString( ), 
                                            Eval("title").ToString( ), 
                                            Eval("deleted").ToString( )) %>
                             </ItemTemplate>
                             <HeaderStyle Width="330px" />
                         </asp:TemplateField>

                         <asp:BoundField DataField="name" HeaderText="이름" SortExpression="name">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Center" />
                         </asp:BoundField>

                         <asp:BoundField DataField="wDate" DataFormatString="{0:yyyy-MM-dd}" 
                                                HeaderText="날짜" SortExpression="wDate" >
                            <HeaderStyle Width="80px" />
                         </asp:BoundField>
                        
                    <asp:BoundField DataField="hit" HeaderText="조회" SortExpression="hit" >
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Center" />
                         </asp:BoundField>
                </Columns>

            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [seq], [title], [name], [wDate], [hit], [ref_id], [inner_id], [depth], [deleted] FROM [board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
        <br />
        <br />
        
            
            </div>

</asp:Content>
