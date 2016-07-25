using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class regist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void subBtn_Click(object sender, EventArgs e)
        {
            string hobby= "";

            if (basketball.Checked)
            {
                hobby = hobby+"足球";
            }
            if (football.Checked)
            {
                hobby = hobby+"soccer";
            }
            if (badminton.Checked)
            {
                hobby = hobby+ "羽毛球";
            }
            if (table_tennis.Checked)
            {
                hobby = hobby + "乒乓球";
            }
            if (tennis.Checked)
            {
                hobby = hobby + "网球";
            }
            if (valleyball.Checked)
            {
                hobby = hobby + "排球";
            }
            if (other_sports.Checked)
            {
                hobby = hobby + "其他运动";
            }

            string sql = "insert into user (u_id, u_pwd, u_name, u_nick, u_hobby, u_location, u_email, u_phoneno) VALUES ('"+stu_id.Value+"', '"+password.Value+"', '"+name.Value+"', '"+nick_name.Value+"', '"+hobby+"', '"+institute.Value+"', '"+email.Value+"', '"+phone.Value+"')";

            MySqlOperation.cmdExcute(sql);

            Response.Write("<script language=\"javascript\">alert('注册成功！');window.location.href='login.aspx';</script>>");

            Response.Redirect("login.aspx");
        }
    }
}