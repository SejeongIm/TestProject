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

namespace Last_Project.Album
{
    public partial class AddPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        { // [사진 올리기] 버튼
            string fName = ""; 
            if (FileUpload1.HasFile == false) 
            { 
                Label2.Text = "사진을 첨부해 주세요.."; 
            }
            else
            {
                fName = FileUpload1.FileName; 
                FileInfo myFile = new FileInfo(Server.MapPath("~/Photos/") + fName);
                if (myFile.Exists) // 이미 같은 이름의 파일이 있는가?
                {
                    myFile = NewFileName(myFile); // 파일명 뒤에 _숫자 붙임
                    fName = myFile.Name;
                }
                FileUpload1.SaveAs(myFile.FullName); // 파일을 서버에 저장(전체경로로 저장해야 함)
                                                     // DB 테이블에 레코드 추가
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; 
                SqlConnection con = new SqlConnection(conStr); 

                string sql = @"Insert into Photos (title, body, name, pwd, fName, userID) 
                             Values (@title, @body, @name, @pwd, @fName, @userID)"; 
                SqlCommand cmd = new SqlCommand(sql, con); 
                cmd.Parameters.AddWithValue("@title", TextBox1.Text); 
                cmd.Parameters.AddWithValue("@body", TextBox2.Text); 
                cmd.Parameters.AddWithValue("@name", TextBox3.Text); 
                cmd.Parameters.AddWithValue("@pwd", TextBox4.Text); 
                cmd.Parameters.AddWithValue("@fName", fName); 
                cmd.Parameters.AddWithValue("@userID", Page.User.Identity.Name); 

                con.Open(); 
                cmd.ExecuteNonQuery(); 
                con.Close(); 
                Response.Redirect("List.aspx"); // 목록 페이지로 이동
            }

        }
        private FileInfo NewFileName(FileInfo myFile)
        {
            int num = 0; 
            string fileName = ""; 
            string fName = myFile.Name.Substring(0, (myFile.Name.Length - myFile.Extension.Length)); 
            string fExtension = myFile.Extension; 
            do
            { 
                num++; 
                fileName = fName + "_" + num + fExtension; 
                myFile = new FileInfo(Server.MapPath("~/Photos/") + fileName); 
            } while (myFile.Exists); // 같은 이름의 파일명이 존재하면 계속 숫자 늘림
            return myFile;
        }
    }
}