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
using System.Web.Security;


namespace Last_Project
{
    public partial class Supply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProduct();
                SetInfo();
            }
        }
        private void SetInfo()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = "Select * From PillProduct Where pID = @pID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@pID", DropDownList1.SelectedValue);
            //실행화면 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd["pID"].ToString();
                TextBox2.Text = rd["pName"].ToString();
                TextBox3.Text = rd["category"].ToString();
                TextBox4.Text = rd["color"].ToString();
                TextBox5.Text = rd["price"].ToString();

            }
            else
                Label2.Text = "아이디가 선택되지 않았습니다.";
            con.Close();
        }
        private void BindProduct()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = "Select pID,pName From PillProduct";
            SqlCommand cmd = new SqlCommand(sql, con);
            //실행 및 화면 표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "pName";
            DropDownList1.DataValueField = "pID";
            DropDownList1.DataBind(); //화면갱신
            con.Close();

        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, new ListItem("-선택하세요", "-1"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetInfo();
            Label2.Text = "";
        }
    }
}