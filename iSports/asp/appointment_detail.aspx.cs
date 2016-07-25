using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class appointment_detail : System.Web.UI.Page
    {
        protected int id;

        protected string username="";

        protected string[] detail_info = new string[11];

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
            id = Convert.ToInt32(Request.QueryString["a"]);

            string sql1 = "select * from appointment where y_id = '" + id + "'";

            MySqlDataReader mr = MySqlOperation.getReader(sql1);

            while (mr.Read())
            {
                detail_info[0] = mr["y_title"].ToString();

                detail_info[1] = mr["y_label"].ToString();

                detail_info[2] = mr["u_id"].ToString();

                detail_info[3] = mr["y_place"].ToString();

                detail_info[4] = DateTime.Parse(mr["y_play_time"].ToString().Trim()).ToShortDateString();

                detail_info[5] = mr["y_nownum"].ToString();

                detail_info[6] = mr["y_content"].ToString();

                detail_info[7] = mr["y_isend"].ToString();

                detail_info[10] = mr["y_people"].ToString();
            }

            string sql2 = "select * from user where u_id = '" + detail_info[2] + "'";

            MySqlDataReader mr2 = MySqlOperation.getReader(sql2);

            while (mr2.Read())
            {
                detail_info[8] = mr2["u_name"].ToString();

                detail_info[9] = mr2["u_phoneno"].ToString();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["userid"] != null)
            {
                string userid = Request.Cookies["userid"].Value;

                if (detail_info[2] == userid)
                {
                    Response.Write("<script>alert('这是你发起的约球，不需要报名!')</script>");
                }
                else
                {
                    string sql1 = "update appointment set y_nownum = y_nownum + 1 where y_id = '" + id + "'";

                    string sql2 = "update appointment set y_people = concat(y_people,'," + username + "') where y_id = '" + id + "'";


                    MySqlOperation.cmdExcute(sql1);

                    MySqlOperation.cmdExcute(sql2);

                    Response.Write("<script language=\"javascript\">alert('报名成功！');window.location.href='appointment_detail.aspx?a=" + id + "';</script>>");
                      
                }
            }
            else
            {
                Response.Write("<script>alert('请登录!')</script>");
            }
        }
    }
}