using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; // 모든 페이지에 추가
using System.Data; // 여기서부터 추가
using System.Configuration;
using System.IO; //파일 업로드를 위함

namespace Last_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated) // 로그인 상태인지 확인한다
            { 
                Label1.Text = Page.User.Identity.Name + " 님";
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            { 
                Label1.Text = "";
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        { // [로그인] 버튼
            Response.Redirect("~/myLogin.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        { // [회원가입] 버튼
            Response.Redirect("~/Register.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        { // [로그아웃] 버튼
            FormsAuthentication.SignOut(); // using System.Web.Security; 입력 확인
            Response.Redirect(Request.UrlReferrer.ToString()); // 현재 페이지 다시 띄움
        }
        protected void Button4_Click(object sender, EventArgs e)
        { // [정보변경] 버튼
            Response.Redirect("~/MemberOnly/Modify.aspx");
        }

        
    }
   
}