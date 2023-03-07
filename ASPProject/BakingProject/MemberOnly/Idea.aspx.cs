using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;//추가
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BakingProject.MemberOnly
{
    public partial class 아이디어_등록하기 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //등록 버튼
                AddMember();
        }

        private void AddMember()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Insert into Dessert Values (@cafeID,@Dname,@category,@ingredient,@price)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cafeID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Dname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@category", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ingredient", TextBox4.Text);
            cmd.Parameters.AddWithValue("@price", TextBox5.Text);
            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)
            { 
                string str = "<script> alert('아이디어가 등록되었습니다.');";
                str += "location.href = '/Home.aspx'; </script>";
                Response.Write(str);
            }
            else
                Label2.Text = "등록에 실패했습니다.";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}