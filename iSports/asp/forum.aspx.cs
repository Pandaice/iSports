using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class forum : System.Web.UI.Page
    {
        protected const int per_page_num = 3;

        protected int bbs_count, page, page_num, item = 0;

        protected string[,] bbs_item = new string[4, 3];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            forum_Load();
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

        protected void forum_Load()
        {
                string sql = "select * from bbs order by b_id desc";

                bbs_count = MySqlOperation.Count(sql);

                if (bbs_count % per_page_num == 0)
                {
                    if (bbs_count == 0)
                    {
                        page_num = 1;
                    }
                    else
                    {
                        page_num = bbs_count / per_page_num;
                    }
                }
                else
                {
                    page_num = bbs_count / per_page_num + 1;
                }

                int i = 0;

                if (Request.QueryString["page"] != null)
                {
                    page = Convert.ToInt32(Request.QueryString["page"]);
                }
                else
                {
                    page = 1;
                }

                MySqlDataReader mr = MySqlOperation.getReader(sql);

                while (mr.Read())
                {
                    if (item < per_page_num)
                    {
                        if (i < (page - 1) * per_page_num)
                        {
                            i++;

                            continue;
                        }

                        bbs_item[item, 0] = mr["b_id"].ToString();

                        bbs_item[item, 1] = mr["b_title"].ToString();

                        bbs_item[item, 2] = mr["b_content"].ToString();

                        item++;
                    }
                    else
                    {
                        break;
                    }
                }

            }

         }

    }