using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class lease : System.Web.UI.Page
    {

        string[] lease_info = new string[7];

        Boolean[] check_info = new Boolean[7];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();
        }

        protected void lease_Load(string place,int day)
        {
            string sql = "select " + place + " from day" + day;

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            int i = 0;

            while (mr.Read())
            {
                lease_info[i] = mr[place].ToString();

                i++;
            }
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

        protected void sub_Click(object sender, EventArgs e)
        {
            if (name.Value == "")
            {
                Response.Write("<script>alert('请输入联系人姓名！')</script>");
                return;
            }
            if (id.Value == "")
            {
                Response.Write("<script>alert('请输入联系人学号！')</script>");
                return;
            }
            if (phone.Value == "")
            {
                Response.Write("<script>alert('请输入联系电话！')</script>");
                return;
            }
            if (use_date.Value == "")
            {
                Response.Write("<script>alert('请输入日期！')</script>");
                return;
            }

            DateTime day = DateTime.Parse(use_date.Value);

            TimeSpan ts = day - DateTime.Now;

            int days = ts.Days+1;

            if (days < 1)
            {
                Response.Write("<script>alert('请提前至少一天预约！')</script>");
            }
            else if (days > 5)
            {
                Response.Write("<script>alert('请在五天内预约！')</script>");
            }
            else
            {
                string place = place_Check();

                //Response.Write("<script>alert('" + place + "')</script>");

                lease_Load(place,days);

                time_Check();

                string msg = "";

                Boolean flag = true;

                for(int i = 0; i < 7; i++)
                {
                    if (check_info[i])
                    {
                        if (lease_info[i] != "")
                        {
                            flag = false;

                            switch (i)
                            {
                                case 0:
                                    msg += use_time1.Value + " ";
                                    break;
                                case 1:
                                    msg += use_time2.Value + " ";
                                    break;
                                case 2:
                                    msg += use_time3.Value + " ";
                                    break;
                                case 3:
                                    msg += use_time4.Value + " ";
                                    break;
                                case 4:
                                    msg += use_time5.Value + " ";
                                    break;
                                case 5:
                                    msg += use_time6.Value + " ";
                                    break;
                                case 6:
                                    msg += use_time7.Value + " ";
                                    break;
                                default:
                                    break;
                            }
                        }
                        else
                        {
                            string sql = "update day" + days + " set " + place + " = '" + name.Value + "' where t_id = '" + (i + 1) + "'";

                            MySqlOperation.cmdExcute(sql);
                        }
                    }
                }

                if (!flag)
                {
                    msg += " 上述时间段该场地已被预约，其余时间预约成功！";

                    Response.Write("<script>alert('" + msg + "')</script>");
                }
                else
                {
                    Response.Write("<script>alert('场地预约成功！')</script>");
                }
            }
        }

        protected void time_Check()
        {
            if (use_time1.Checked) check_info[0] = true;

            if (use_time2.Checked) check_info[1] = true;

            if (use_time3.Checked) check_info[2] = true;

            if (use_time4.Checked) check_info[3] = true;

            if (use_time5.Checked) check_info[4] = true;

            if (use_time6.Checked) check_info[5] = true;

            if (use_time7.Checked) check_info[6] = true;
        }

        protected string place_Check()
        {
            string res = "";

            if (dbasket.Checked)
            {
                res = dbasket.Value;
            }
            else if (dbad.Checked)
            {
                res = dbad.Value;
            }
            else if (dtable.Checked)
            {
                res = dtable.Value;
            }
            else if (tennis.Checked)
            {
                res = tennis.Value;
            }
            else if (gqc.Checked)
            {
                res = gqc.Value;
            }
            else if (volley5.Checked)
            {
                res = volley5.Value;
            }
            else if (basket5.Checked)
            {
                res = basket5.Value;
            }
            else if (hdbasket.Checked)
            {
                res = hdbasket.Value;
            }
            else if (fzcc2.Checked)
            {
                res = fzcc2.Value;
            }
            else
            {
                Response.Write("<script>alert('请选择一个场地！')</script>;window.location.href='lease.aspx';");
            }
            return res;
        }
    }
}