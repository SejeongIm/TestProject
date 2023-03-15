
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

namespace Last_Project.Album
{
    public partial class CheckPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["mode"] == "edit")
            {
                ImageButton1.ImageUrl = "~/Images/modify.gif";
            }
            else
            {
                ImageButton1.ImageUrl = "~/Images/delete.gif";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string imgID = Request.QueryString["imgID"];
            //연결
            string conStr =
                ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = "Select * from Photos Where imgID=@imgID and pwd=@pwd";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@imgID", imgID);
            cmd.Parameters.AddWithValue("pwd", TextBox1.Text);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                if (Request.QueryString["mode"] == "edit")
                {
                    Response.Redirect("Edit.aspx?imgID=" + imgID);
                }
                else
                {
                    Response.Redirect("Delete.aspx?imgID=" + imgID);
                }
            }
            else
            {
                Label1.Text = "비밀번호가 일치하지 않습니다.. 다시!!";
            }
            rd.Close();
            con.Close();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}