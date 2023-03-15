using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // 추가
using System.Data.SqlClient;
using System.Configuration;

namespace Last_Project
{
    public partial class Write : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string user = Page.User.Identity.Name; // 로그인 ID
            if (!Page.User.Identity.IsAuthenticated)
                user = TextBox1.Text;  // 임시로 이 문장 사용(삭제 테스트 할때는 문자열 바꿔보기)

            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Insert into GuestBook(UserID, name, email, title, body) 
                                    Values (@UserID, @name, @email, @title, @body)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", user);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@title", TextBox3.Text);
            cmd.Parameters.AddWithValue("@body", TextBox4.Text);

            //실행
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            //화면갱신 또는 이동
            Response.Redirect("List.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("List.aspx");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}