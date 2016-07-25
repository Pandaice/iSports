using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class appointment_child : System.Web.UI.Page
    {
        protected string userid, username;

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();
        }

        protected void user_Load()
        {
            if (Request.Cookies["userid"] != null)
            {
                userid = Request.Cookies["userid"].Value;

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

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string type = "";

            if (basketball.Checked)
            {
                type = "basketball";
            }else if (soccer.Checked)
            {
                type = "soccer";
            }else if (badminton.Checked)
            {
                type = "badminton";
            }else if (tabletennis.Checked)
            {
                type = "tabletennis";
            }else if (tennis.Checked)
            {
                type = "tennis";
            }else if (volleyball.Checked)
            {
                type = "volleyball";
            }

            string sql = "insert into appointment(u_id,y_title,y_label,y_content,y_num,y_play_time,y_people,y_phone,y_place,y_time) values('"+a_id.Value+"','"+project_name.Value+"','"+type+"','"+project_brief.Value+"','"+people_num.Value+"','"+time.Value+"','"+a_name.Value+"','"+ phone.Value + "','"+place.Value+"','"+DateTime.Now.ToString()+"')";

            MySqlOperation.cmdExcute(sql);

            Response.Write("<script language=\"javascript\">alert('发起成功！');window.location.href='appointment.aspx';</script>>");
        }
    }
}