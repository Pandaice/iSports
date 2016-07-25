using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class appointment : System.Web.UI.Page
    {
        protected const int per_page_num = 6;

        protected int page, count, page_num, idx;

        protected string[,] appoint = new string[6, 11];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            appointment_Load();
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

        protected void appointment_Load()
        {
            if (Request.QueryString["page"] != null)
            {
                page = Convert.ToInt32(Request.QueryString["page"]);
            }
            else
            {
                page = 1;
            }

            string balltype = "", week = "", sql = "";

            if (Request.QueryString["balltype"] != null && Request.QueryString["week"] != null && Request.QueryString["balltype"] != "" && Request.QueryString["week"] != "")
            {
                balltype = Request.QueryString["balltype"];

                week = Request.QueryString["week"];

                sql = "select * from appointment where y_label = '" + balltype + "' and DAYOFWEEK(y_play_time)='" + week + "' order by y_id desc";
            }
            else if (Request.QueryString["balltype"] != null && Request.QueryString["balltype"] != "")
            {
                balltype = Request.QueryString["balltype"];

                sql = "select * from appointment where y_label='" + balltype + "' order by y_id desc";
            }
            else if (Request.QueryString["week"] != null && Request.QueryString["week"] != "")
            {
                week = Request.QueryString["week"];

                sql = "select * from appointment where DAYOFWEEK(y_play_time)='" + week + "' order by y_id desc";
            }
            else
            {
                sql = "select * from appointment order by y_id desc";
            }

            count = MySqlOperation.Count(sql);

            MySqlDataReader mr = MySqlOperation.getReader(sql);

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

            int i = 0;

            idx = 0;

            while (mr.Read() && idx < per_page_num)
            {
                if (i < (page - 1) * per_page_num)
                {
                    i++;

                    continue;
                }

                appoint[idx, 0] = mr["y_id"].ToString();

                appoint[idx, 1] = mr["u_id"].ToString();

                appoint[idx, 2] = mr["y_title"].ToString();

                appoint[idx, 3] = mr["y_label"].ToString();

                appoint[idx, 4] = mr["y_content"].ToString();

                appoint[idx, 5] = mr["y_place"].ToString();

                appoint[idx, 6] = mr["y_num"].ToString();

                appoint[idx, 7] = DateTime.Parse(mr["y_play_time"].ToString().Trim()).ToShortDateString();

                appoint[idx, 8] = DateTime.Parse(mr["y_time"].ToString().Trim()).ToShortDateString();

                appoint[idx, 9] = mr["y_isend"].ToString();

                appoint[idx, 10] = mr["y_nownum"].ToString();

                idx++;
            }
        }
    }
}