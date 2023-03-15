using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Last_Project
{
    public partial class 기타1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex==0)
                Image4.ImageUrl= "~/Images/ai01.jpg"; 
            else if (DropDownList1.SelectedIndex == 1)
                Image4.ImageUrl = "~/Images/ai02.jpg";
            else if (DropDownList1.SelectedIndex == 2)
                Image4.ImageUrl = "~/Images/ai03.jpg";
            else if (DropDownList1.SelectedIndex == 3)
                Image4.ImageUrl = "~/Images/ai04.jpg";
            else if (DropDownList1.SelectedIndex == 4)
                Image4.ImageUrl = "~/Images/ai05.jpg";
            else              
                Image4.ImageUrl = "~/Images/ai06.jpg";

            Image4.AlternateText = DropDownList1.SelectedItem.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
                Label2.Text = "더 궁금하신 내용이 있으시면 010-1234-567 로 문의해 주십시오.";
            else
                Label2.Text = "감사합니다 행복한 하루 되세요 :)";
        }
    }
}