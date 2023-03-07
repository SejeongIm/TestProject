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


namespace BakingProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                Label2.Text = Page.User.Identity.Name + "님, 환영합니다.";
                Button5.Visible = true;

            }
            else
            {
                Label2.Text = "";
                Button5.Visible = false;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //로그아웃 버튼
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.DefaultUrl);
        }
    }
}