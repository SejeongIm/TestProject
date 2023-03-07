using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakingProject.MemberOnly
{
    public partial class survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label2.Text = "설문조사를 해주셔서 감사합니다. 즐거운 카페활동 하시길바랍니다. ";
        }
    }
}