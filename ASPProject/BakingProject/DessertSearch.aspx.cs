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
    public partial class DessertSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr); //연결객체 생성 
            //명령(sql 문)
            string sql = "Select * from Dessert where cafeID Like '%' + @cafeID + '%'";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@cafeID", TextBox1.Text);//파라미터 정의 및 값지정
            //실행 및 화면표시
            con.Open();
            Label2.Text = "";
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Label2.Text += string.Format("{0},{1},{2},{3} <br/>", rd[0], rd[1], rd[2], rd[3]);
            }
            if (Label2.Text == "")
                Label2.Text = "존재하지 않는 사용자입니다.";

            rd.Close();
            con.Close();


        }
    }
}