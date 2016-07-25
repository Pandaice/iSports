using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class my_start : System.Web.UI.Page
    {
        protected int count, idx = 0, page, page_num;

        protected const int per_page_num = 4;

        protected string username;

        protected string[,] start_info = new string[4, 10];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            start_Load();
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
                    username = mr["u_name"].ToString();

                    log.InnerText = "欢迎：" + username;
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

        protected void start_Load()
        {
            string userid = Request.Cookies["userid"].Value;

            string sql = "select * from appointment where u_id = '" + userid + "'";

            count = MySqlOperation.Count(sql);

            if (count % per_page_num == 0)
            {
                if (count == 0)
                {
                    page_num = 1;
                }
                else
                {
                    page_num = count / per_page_num;
                }
            }
            else
            {
                page_num = count / per_page_num + 1;
            }

            if (Request.QueryString["page"] != null)
            {
                page = Convert.ToInt32(Request.QueryString["page"]);
            }
            else
            {
                page = 1;
            }

            int i = 0;

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            while (mr.Read() && idx < per_page_num)
            {
                if (i < (page - 1) * per_page_num)
                {
                    i++;

                    continue;
                }

                start_info[idx, 0] = mr["y_id"].ToString();

                start_info[idx, 1] = mr["u_id"].ToString();

                start_info[idx, 2] = mr["y_title"].ToString();

                start_info[idx, 3] = mr["y_label"].ToString();

                start_info[idx, 4] = mr["y_content"].ToString();

                start_info[idx, 5] = mr["y_place"].ToString();

                start_info[idx, 6] = mr["y_num"].ToString();

                start_info[idx, 7] = mr["y_play_time"].ToString();

                start_info[idx, 8] = DateTime.Parse(mr["y_time"].ToString().Trim()).ToShortDateString();

                start_info[idx, 9] = mr["y_isend"].ToString();

                idx++;
            }
        }
    }
}