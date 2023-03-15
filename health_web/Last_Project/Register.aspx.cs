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

namespace Last_Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // [중복확인] 버튼 // 아이디중복확인을 위한 새 창을 연다. (자바스크립트 코드 사용)
            string str = "<script> window.open('FindID.aspx?id=" + TextBox1.Text
                + "' , 'myWindow' , 'top=200, left=200, width=400, height=200' )</script>";
            Response.Write( str );
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // [등록합니다] 버튼
            if (IsMemberExists())
                Label2.Text = "이미 사용 중인 아이디입니다<br>다른 아이디를 사용해 주세요.";
            else
                AddMember();
        }
        private bool IsMemberExists()
        {
            bool result = true;
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string sql = "Select * from Member where UserID = @UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read()) 
                result = true;
            // 같은 아이디가 이미 존재함
            else
                result = false;
            rd.Close();
            con.Close();
            return result;
        }

        private void AddMember()
        {
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string sql = @"insert into Member values (@UserID, @Password, @Name, @Phone)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a > 0)
            {
                FormsAuthentication.SetAuthCookie(TextBox1.Text, false);// (1) 인증쿠기 생성: 로그인됨
                string str = "<script> alert('회원에 가입되셨습니다');";
                str += " location.href='Home.aspx';"; // Home.asxp 페이지로 이동함
                str += "</script>";
                Response.Write(str);
            }
            else
                Label2.Text = "회원가입에 실패했습니다";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            // [Home 으로] 버튼
            Response.Redirect("Home.aspx");
        }
    }
}