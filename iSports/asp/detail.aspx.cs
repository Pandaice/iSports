using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class detail : System.Web.UI.Page
    {
        protected int news_num;

        protected string[] news_detail = new string[4];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            news_Load();
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

        protected void news_Load()
        {
            news_num = Convert.ToInt32(Request.QueryString["a"]);

            string sql = "select * from announcement where a_id = '" + news_num + "'";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            while (mr.Read())
            {
                news_detail[0] = mr["a_title"].ToString();

                news_detail[1] = DateTime.Parse(mr["a_time"].ToString().Trim()).ToShortDateString();

                news_detail[2] = mr["a_img"].ToString();

                news_detail[3] = mr["a_description"].ToString();

            }
        }
    }
}

