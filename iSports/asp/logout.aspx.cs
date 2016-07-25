using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iSports.asp
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = Response.Cookies["userid"];

            ck.Expires = DateTime.Now.AddDays(-30);

            Response.Redirect("index.aspx", true);
        }
    }
}