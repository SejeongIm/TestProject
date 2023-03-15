using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;  //파일 저장 관련

namespace Last_Project.Album
{
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //연결
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; SqlConnection con = new SqlConnection(conStr);

                string sql = "update Photos Set hit = hit + 1 where imgID=@imgID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@imgID", Request.QueryString["imgID"]);

                   con.Open();
                   cmd.ExecuteNonQuery();  // 조회수 증가 실행
                   con.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        { //수정 버튼
            Response.Redirect("CheckPassword.aspx?mode=edit&imgID=" + Request.QueryString["imgID"]);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        { //삭제 버튼
            Response.Redirect("CheckPassword.aspx?mode=del&imgID=" + Request.QueryString["imgID"]);
        }
    }
}