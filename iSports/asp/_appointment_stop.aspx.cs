using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class _appointment_stop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["a"];

            string sql = "update appointment set y_isend = 1 where y_id = '" + id + "'";

            MySqlOperation.cmdExcute(sql);
     
            Response.Redirect("my_start.aspx");
        }
    }
}