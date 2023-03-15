using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // 여기서부터 추가
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.IO; //파일 업로드를 위함

namespace Last_Project.MemberOnly
{
    public partial class Modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // 반드시 필요함!!
            { 
                string id = User.Identity.Name;

                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                string sql = "Select * from Member where UserID = @UserID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@UserID", id);

                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Label3.Text = id;
                    TextBox4.Text = rd["Name"].ToString();
                    TextBox5.Text = rd["Phone"].ToString();
                }
                rd.Close();
                con.Close();
        }
    }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // [변경합니다] 버튼
            string id = User.Identity.Name;
            string pwd = TextBox2.Text;
            string name = TextBox4.Text;
            string phone = TextBox5.Text;
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string sql = @"Update Member Set Password=@Password,
                                Name=@Name, Phone=@Phone where UserID = @UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Password", pwd);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@UserID", id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0) { string str = "<script> alert('정보가 변경되었습니다'); ";
                str += " location.href='../Home.aspx'; ";
                str += "</script>";
                Response.Write(str);
            }
            else
                Label2.Text = "정보변경에 실패했습니다.";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            // [Home 으로] 버튼
            Response.Redirect("../Home.aspx"); // 경로에 주의할 것
        }
    }
}