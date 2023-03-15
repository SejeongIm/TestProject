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
    public partial class FindID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = Request.QueryString["id"];
                Button5.Visible = false; // [사용] 버튼은 안보이게 함
                Page.Validate(); // 페이지의 유효성검사 컨트롤을 검사시킴
                CheckUserIdExists();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckUserIdExists();
        }

        private void CheckUserIdExists()
        {
            if (IsValid) // 이 페이지가 유효하면
            {
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                string sql = "Select * from Member where UserID = @UserID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);

                con.Open();
                if (cmd.ExecuteScalar() == null) // select 결과로 넘어오는 첫 번째 필드 값을 받아옴
                {
                    Label2.Text = "신청하신 아이디는 사용가능합니다.";
                    Button5.Visible = true;
                }
                else
                { 
                    Label2.Text = "사용 중인 아이디입니다..";
                    Button5.Visible = false;
                }
                con.Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //사용할 아이디를 회원가입 창으로 넘기면서 열린 창을 닫음 (자바스크립트로 실행)
            string str = "<script> "
            +" opener.document.getElementById('ContentPlaceHolder1_TextBox1').value ='"
            + TextBox1.Text + "'; " + " self.close( ); </script>";
            Response.Write(str);
        }
    }
}