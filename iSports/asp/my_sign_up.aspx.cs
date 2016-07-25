using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class my_sign_up : System.Web.UI.Page
    {
        protected int count, idx = 0;

        protected string username;

        protected string[,] sign_up_info = new string[100, 9];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            detail_Load();
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

        protected void detail_Load()
        {
            string userid = Request.Cookies["userid"].Value;

            string sql = "select * from appointment where y_people like '%" + username + "%' and u_id != '" + userid + "'";

            count = MySqlOperation.Count(sql);

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            while (mr.Read())
            {
                sign_up_info[idx, 0] = mr["y_id"].ToString();

                sign_up_info[idx, 1] = mr["u_id"].ToString();

                sign_up_info[idx, 2] = mr["y_title"].ToString();

                sign_up_info[idx, 3] = mr["y_label"].ToString();

                sign_up_info[idx, 4] = mr["y_content"].ToString();

                sign_up_info[idx, 5] = mr["y_place"].ToString();

                sign_up_info[idx, 6] = mr["y_num"].ToString();

                sign_up_info[idx, 7] = mr["y_play_time"].ToString();

                sign_up_info[idx, 8] = DateTime.Parse(mr["y_time"].ToString().Trim()).ToShortDateString();

                idx++;
            }
        }
    }
}