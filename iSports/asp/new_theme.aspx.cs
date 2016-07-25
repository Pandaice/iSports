using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class news_theme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string userid = Request.Cookies["userid"].Value;

            string sql = "insert into bbs(u_id, b_title, b_content) VALUES('"+userid+"', '"+topic.Value+"', '"+content.Value+"')";

            MySqlOperation.cmdExcute(sql);

            Response.Redirect("forum.aspx");
        }

        protected void user_Load()
        {
            if (Request.Cookies["userid"] != null)
            {
                string userid = Request.Cookies["userid"].Value;

                string sql = "select * from user where u_id='" + userid + "'";

                MySqlDataReader mr = MySqlOperation.getReader(sql);

                if (mr.Read())
                {
                    log.InnerText = "欢迎：" + mr["u_name"].ToString();
                }
            }

            else
            {

                log.InnerText = "登录";

                log.HRef = "login.aspx";

                shu.InnerText = "|";

                reg.InnerText = "注册";

                reg.HRef = "regist.aspx";

            }
        }
    }
}