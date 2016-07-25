using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using iSports;

namespace iSports.asp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            string sql = "select u_pwd from user where u_id = '" + stu_id.Value + "'";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            if (mr.Read())
            {
                if (mr["u_pwd"].ToString() == login_password.Value)
                {

                    Response.Cookies["userid"].Value = stu_id.Value;

                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(1);

                    if (Request.Cookies["userid"] != null)
                    {
                        Response.Redirect("index.aspx", true);
                    }

                }

                else
                {
                    Response.Write("<script language=\"javascript\">alert('登陆失败！');</script>>");
                }

            }
        }
    }
}