using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; // 추가
using System.Configuration;
using System.IO; // 추가 - 파일 입출력 (파일 저장)
using System.Web.Security; // 추가
namespace Last_Project
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected string GetEmail(object email)
        {
            string ss = email.ToString();
            return "mailto" + ss;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("~/Write.aspx");
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void LinkButton1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_DeleteCommand1(object source, DataListCommandEventArgs e)
        {
            string ss = e.CommandArgument.ToString();  // 선택한 행의 nID 값
 //연결 
            String conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            

            //명령
            string sql = @"Delete from GuestBook Where seq = @seq";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@seq", ss);

            //실행
            con.Open();
            cmd.ExecuteNonQuery();  // 실행 쿼리
            con.Close();

            //화면 갱신
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            string user = Page.User.Identity.Name;
           // user = "woo";  // 임시로 지정(삭제 테스트 할때는 단어 바꿔보기)

            if ((e.Item.ItemType == ListItemType.Item) ||
                      (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                LinkButton btn = (LinkButton)e.Item.FindControl("LinkButton1");
                Label lbl = (Label)e.Item.FindControl("Label6");
                if (lbl.Text == user)
                    btn.Visible = true;
                else
                    btn.Visible = false;
            }
        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    
