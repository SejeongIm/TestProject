
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
using System.IO;


namespace Last_Project.Album
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //연결
                string conStr =
                    ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                string sql = "Select * from Photos Where imgID=" + Request.QueryString["imgID"];
                SqlCommand cmd = new SqlCommand(sql, con);

                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    TextBox1.Text = rd["title"].ToString();
                    TextBox2.Text = rd["body"].ToString();
                    TextBox3.Text = rd["name"].ToString();
                    Label4.Text = rd["fName"].ToString();
                    Image4.ImageUrl = "~/Photos/" + Label4.Text;

                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { //수정 버튼
            //DB 연동하여 update 쿼리를 실행시킴
            string imgID = Request.QueryString["imgID"];
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string sql = @"Update Photos Set title=@title, body=@body, name=@name
                                         Where imgID=@imgID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@body", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@imgID", imgID);
            con.Open(); cmd.ExecuteNonQuery(); con.Close();
            //이동
            Response.Redirect("Show.aspx?imgID=" + Request.QueryString["imgID"]);

        }

        protected void Button2_Click(object sender, EventArgs e)
        { //취소 버튼
            Response.Redirect("Show.aspx?imgID=" + Request.QueryString["imgID"]);


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}