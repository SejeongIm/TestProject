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

namespace BakingProject.AdminOnly
{
    public partial class 상품관리 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductID(); //드롭 다운 리스트에 UserID를 바인딩
                SetInfo();//아래의 5개 필드값을 채운다. 
            }
        }

        private void BindProductID()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = "Select UserID, Name From People ";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성

            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "UserID";
            DropDownList1.DataBind(); //화면갱신
            con.Close();
        }

        private void SetInfo()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = "Select * From People Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@UserID", DropDownList1.SelectedValue);

            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd["UserID"].ToString();
                TextBox2.Text = rd["Password"].ToString();
                TextBox3.Text = rd["Name"].ToString();
                TextBox4.Text = rd["Phone"].ToString();
                TextBox5.Text = rd["field"].ToString();

            }
            else
            {
                Label1.Text = "아이디가 선택되지 않았습니다.";
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClearData();
        }

        private void ClearData()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label1.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //입력 버튼(계정등록)
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = "Insert into People Values (@UserID, @Password, @Name, @Phone, @field)";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@Name", TextBox3.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@field", TextBox5.Text);//파라미터 정의 및 값지정
            //실행 및 화면표시
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();//실행 쿼리 (입력, 삭제, 수정 기능을 하는 쿼리)
                con.Close();

                Label1.Text = TextBox1.Text + "의 정보가 입력되었습니다.";
            }
            catch (Exception ex)
            {
                //Label1.Text = ex.Message;
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //연결(상품삭제)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = @"Delete From People Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@UserID", DropDownList1.SelectedValue);//파라미터 정의 및 값지정

            //실행 및 화면표시
            con.Open();

            int num = cmd.ExecuteNonQuery();//실행 쿼리 (입력, 삭제, 수정 기능을 하는 쿼리)

            con.Close();

            ClearData();
            //SetInfo();

            if (num > 0)
                Label1.Text = DropDownList1.SelectedItem.Text + "의 정보가 삭제되었습니다.";
            else
                Label1.Text = "삭제에 실패했습니다.";

            BindProductID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //수정 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = @"Update People set Password=@Password,Name=@Name,Phone=@Phone,field=@field " +
                "Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@Name", TextBox3.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@field", TextBox5.Text);//파라미터 정의 및 값지정
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);//파라미터 정의 및 값지정

            //실행 및 화면표시
            con.Open();
            int num = cmd.ExecuteNonQuery();//실행 쿼리 (입력, 삭제, 수정 기능을 하는 쿼리)
            //숫자로도 받아온다 몇개의 행이 변화하는지 이것을 아래의 문장에 if 조건으로 쓸수 있다. 
            con.Close();
            if (num > 0)
                Label1.Text = TextBox3.Text + "의 정보가 수정되었습니다.";
            else
                Label1.Text = "수정에 실패했습니다.";

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetInfo();
            Label1.Text = "";
        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, new ListItem("- 선택하세요 -", "-1"));
        }
    }
    
}