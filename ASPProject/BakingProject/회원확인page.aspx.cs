using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakingProject
{
    public partial class 회원확인page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, new ListItem("--선택하세요--", "-1"));
        }
    }
}