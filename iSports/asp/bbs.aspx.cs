using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class bbs : System.Web.UI.Page
    {
        protected string[] bbs_item = new string[4];

        protected int bbs_num, page, page_num, total_comment, item = 0;

        protected const int per_page_num = 3;

        protected string[,] bbs_comment = new string[20, 3];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            bbs_item_Load();

        }

        protected void replyBtn_Click(object sender, EventArgs e)
        {
            bbs_num = Convert.ToInt32(Request.QueryString["a"]);

            string userid = Request.Cookies["userid"].Value;

            string time = DateTime.Now.ToString();

            string sql = "insert into commentary (b_id, u_id, c_title, c_time) VALUE ('" + bbs_num + "', '" + userid + "', '" + reply.Value + "', '" + time + "')";

            MySqlOperation.cmdExcute(sql);

            Response.Redirect("bbs.aspx?a=" + bbs_num);

            reply.Value = "";
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

        protected void bbs_item_Load()
        {
            bbs_num = Convert.ToInt32(Request.QueryString["a"]);

            string sql = "select * from bbs where b_id = '" + bbs_num + "'";

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            if (mr.Read())
            {
                bbs_item[0] = mr["u_id"].ToString();

                bbs_item[1] = mr["b_title"].ToString();

                bbs_item[2] = mr["b_content"].ToString();

                bbs_item[3] = mr["b_time"].ToString();
            }

            string sql2 = "select * from commentary where b_id = '" + bbs_num + "' order by c_id desc";

            MySqlDataReader mr2 = MySqlOperation.getReader(sql2);

            total_comment = MySqlOperation.Count(sql2);

            if (total_comment % per_page_num == 0)
            {
                if (total_comment == 0)
                {
                    page_num = 1;
                }
                else
                {
                    page_num = total_comment / per_page_num;
                }
            }
            else
            {
                page_num = total_comment / per_page_num + 1;
            }


            if (Request.QueryString["page"] != null)
            {
                page = Convert.ToInt32(Request.QueryString["page"]);
            }
            else
            {
                page = 1;
            }

            int idx = 0;

            while (mr2.Read())
            {
                if (item < per_page_num)
                {
                    if (idx < (page - 1) * per_page_num)
                    {
                        idx++;

                        continue;
                    }

                    bbs_comment[item, 0] = mr2["u_id"].ToString();

                    bbs_comment[item, 1] = mr2["c_title"].ToString();

                    bbs_comment[item, 2] = mr2["c_time"].ToString();

                    item++;
                }
            }
        }
    }
}