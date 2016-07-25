using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class lease_table : System.Web.UI.Page
    {
        protected string[,] lease_info = new string[7, 9];

        protected int date;

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            table_Load();
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

        protected void table_Load()
        {
            if (Request.QueryString["date"] != null)
            {
                date = Convert.ToInt32(Request.QueryString["date"]);
            }
            else
            {
                date = 0;
            }

            string sql = "select * from day" + date;

            MySqlDataReader mr = MySqlOperation.getReader(sql);

            int idx = 0;

            while (mr.Read())
            {
                lease_info[idx, 0] = mr["dbasket"].ToString();
                
                lease_info[idx, 1] = mr["dbad"].ToString();
                
                lease_info[idx, 2] = mr["dtable"].ToString();
                
                lease_info[idx, 3] = mr["tennis"].ToString();
                
                lease_info[idx, 4] = mr["gqc"].ToString();
                
                lease_info[idx, 5] = mr["volley5"].ToString();

                lease_info[idx, 6] = mr["basket5"].ToString();
                
                lease_info[idx, 7] = mr["hdbasket"].ToString();
                
                lease_info[idx, 8] = mr["fzcc2"].ToString();
                
                idx++;
            }
        }
    }
}