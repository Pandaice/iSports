using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class user : System.Web.UI.Page
    {
        protected string[] user_info = new string[7];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            userInfo_Load();
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

        protected void userInfo_Load()
        {
            string userid = Request.Cookies["userid"].Value;

            string sql = "select * from user where u_id = '"+userid+"'";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            if (mr.Read())
            {
                user_info[0] = mr["u_id"].ToString();

                user_info[1] = mr["u_name"].ToString();

                user_info[2] = mr["u_location"].ToString();

                user_info[3] = mr["u_nick"].ToString();

                user_info[4] = mr["u_phoneno"].ToString();

                user_info[5] = mr["u_email"].ToString();

                user_info[6] = mr["u_hobby"].ToString();
            }
        }
    }
}