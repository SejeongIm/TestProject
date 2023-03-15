using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // 추가
using System.Data;
using System.Configuration;
namespace Last_Project
{
    public partial class NoteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Text = Page.User.Identity.Name; // 로그인 된 아이디
               // Label2.Text = "Woo"; // 임시 아이디, 나중에 삭제함
                TextBox1.Text = Label2.Text; // 현재 로그인 된 계정으로 출력함, 임시로
            }
        }
        protected string GetEmail(object email)
        {
            string ss = email.ToString();
            ss = "mailto:" + ss; // 프로토콜 
            return ss;
        }
        protected string GetContent(object content)
        {
            string ss = content.ToString();
            ss = ss.Replace("\n", "<br />");
            return ss;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            // 이미지 버튼
            if (TextBox3.TextMode == TextBoxMode.SingleLine)
            {
                TextBox3.TextMode = TextBoxMode.MultiLine;
                TextBox3.Rows = 5;
            }
            else
            {
                TextBox3.TextMode = TextBoxMode.SingleLine;
                TextBox3.Rows = 1;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Label3.Text = "로그인 후 게시판 이용 가능합니다.";
                return;
            }
            // 이미지 2 버튼(저장 버튼)

            string user = Page.User.Identity.Name; // 로그인 한 아이디
            //user = "Woo"; // 임시, 나중에 삭제함
            // 연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            // 명령
            string sql = "Insert into Note(userID , name, email, content) Values (@userID , @name, @email, @content)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@userID", user);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@content", TextBox3.Text);
            // 실행
            con.Open();
            int num = cmd.ExecuteNonQuery(); // 실행문 실행 
            con.Close();
            DataList1.DataBind(); // 화면 갱신
            TextBox3.Text = ""; // 빈 문자열로 
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            // 삭제(이벤트)
            string ss = e.CommandArgument.ToString();

            // 연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            // 명령
            string sql = "Delete From Note Where nID = @nID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@nID", ss);
            // 실행
            con.Open();
            int num = cmd.ExecuteNonQuery(); // 실행문 실행 
            con.Close();

            DataList1.DataBind(); // 화면 갱신
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            // 아무나 삭제되지 못하게 막는 삭제 기능 - 이벤트 속성
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lbl = (Label)e.Item.FindControl("Label1");
                LinkButton btn = (LinkButton)e.Item.FindControl("LinkButton1");

                if (lbl.Text == Label2.Text) // 로그인 계정과 일치하는가
                    btn.Visible = true;
                else
                    btn.Visible = false;
            }
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}