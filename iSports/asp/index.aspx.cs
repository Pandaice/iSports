using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using iSports;

namespace iSports
{
    public partial class Index : System.Web.UI.Page
    {
        protected string[,] news_info = new string[6,4];

        protected string[,] bbs_info = new string[6, 4];

        protected int news_count, bbs_count;

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            news_Load();

            bbs_Load();
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

        protected void bbs_Load()
        { 
            string sql = "select * from bbs where b_id<4";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            int idx = 0;

            while (mr.Read())
            {
                bbs_info[idx, 0] = "bbs.aspx?a=" + mr["b_id"].ToString();

                bbs_info[idx, 1] = mr["b_title"].ToString();

                bbs_info[idx, 2] = mr["b_content"].ToString();

                idx++;
            }

            bbs_count = idx;

        }

        protected void news_Load()
        {
            string sql = "select * from announcement where a_id<7";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            int idx = 0;

            while (mr.Read())
            {
                news_info[idx,0] = "detail.aspx?a=" + mr["a_id"].ToString();

                news_info[idx,1] = mr["a_title"].ToString();

                news_info[idx,2] = mr["a_img"].ToString();

                news_info[idx,3] = mr["a_label"].ToString().Replace("\n", "<br/>");

                idx++;
            }

            news_count = idx;

        }
    }


}