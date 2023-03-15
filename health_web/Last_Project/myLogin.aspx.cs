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
    public partial class myLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 이미 로그인되어 있을 경우는 Home.aspx 페이지로 보냄
            if (Page.User.Identity.IsAuthenticated) 
                Response.Redirect(FormsAuthentication.DefaultUrl);
        }

        protected void Button5_Click(object sender, EventArgs e)
        { // [로그인] 버튼
            if (IsAuthenticated(TextBox1.Text, TextBox2.Text)) // 인증된 사용자이면
            {
                // 실제 로그인 실행: (1)인증 쿠기 생성 + (2)요청한 페이지로 이동
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
                Label2.Text = "ID 또는 비밀번호가 틀립니다..";
        }
        private bool IsAuthenticated(string userID, string password)
        {
            bool result = false; // 초기값: 인증 안된 사용자인 걸로
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;

            SqlConnection con = new SqlConnection(conStr);
            string sql = "Select * from Member where UserID = @UserID and Password = @Password";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@UserID", userID);
            cmd.Parameters.AddWithValue("@Password", password);


            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
                result = true;
            else
                result = false; // 생략 가능 (초기값으로 이미 설정)

            rd.Close();
            con.Close();

            return result; // 참 또는 거짓을 리턴
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}