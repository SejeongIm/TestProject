using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // 추가
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.IO;

namespace Last_Project.MemberOnly
{
    public partial class CalendarEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["day"] != null) 
                {
                  Calendar1.SelectedDate = (DateTime)Session["day"];
                  Calendar1.VisibleDate = (DateTime)Session["month"];
                }
                else
                {
                    Calendar1.SelectedDate = Calendar1.TodaysDate;
                }
                
                DropDownList1.Items.Add("오늘중");
                for (int i = 0; i < 24; i++)
                    DropDownList1.Items.Add(string.Format("{0:D2} 시", i));
                for (int i = 0; i < 6; i++)
                    DropDownList2.Items.Add(string.Format("{0:D2} 분", i * 10));
                ShowToDoList();
            }
        }

        private void ShowToDoList()
        {
            string id = User.Identity.Name;
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"Select * from schedule Where userID = @userID and sDate = @sDate 
                                Order by sTime";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@userID", id);
            cmd.Parameters.AddWithValue("@sDate", Calendar1.SelectedDate.ToShortDateString());

            con.Open();
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();
        }
        protected string DoneCheck(object todo, object hasDone)
        {
            string result = todo.ToString();
            string done = hasDone.ToString();
            if (done == "Y")
            {
                result = "<strike>" + result + "</strike>";
            }
            return result;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Label4.Text = "로그인하셔야 등록됩니다.";
                return;
            }
            string id = User.Identity.Name;
            string sTime = DropDownList1.SelectedItem.Text + " " + DropDownList2.SelectedItem.Text;
            if (DropDownList1.SelectedIndex == 0)
                sTime = "오늘중";

            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"Insert into schedule (userID, sDate, sTime, toDo, hasDone) 
            Values (@userID, @sDate, @sTime, @toDo, 'N')";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@userID", id);
            cmd.Parameters.AddWithValue("@sDate", Calendar1.SelectedDate.ToShortDateString());
            cmd.Parameters.AddWithValue("@sTime", sTime);
            cmd.Parameters.AddWithValue("@toDo", TextBox1.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();            ShowToDoList();

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Session["day"] = Calendar1.SelectedDate;
            Session["month"] = Calendar1.VisibleDate;
            Label4.Text = Calendar1.SelectedDate.ToShortDateString();

            ShowToDoList();

        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            Session["month"] = Calendar1.VisibleDate;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            string id = User.Identity.Name;
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "Select * from schedule Where userID=@userID and sDate=@sDate";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@userID", id);
            cmd.Parameters.AddWithValue("@sDate", e.Day.Date.ToShortDateString());

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
            {
                e.Cell.Font.Bold = true; 
                e.Cell.Font.Italic = true;
                e.Cell.ForeColor = System.Drawing.Color.Blue;
            }
            rd.Close();
            con.Close();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "delete schedule Where seq = @seq";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@seq", e.CommandArgument);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            ShowToDoList();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Done")
            {
                if (e.CommandName == "Done") 
                {
                   
                    string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                    SqlConnection con = new SqlConnection(conStr);
                    
                    string sql = "Update schedule Set hasDone='Y' Where seq = @seq";
                    SqlCommand cmd = new SqlCommand(sql, con);

                    cmd.Parameters.AddWithValue("@seq", e.CommandArgument); // itemTemplate 에서 지정했음. 

                   
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ShowToDoList();
                }
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}