﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace iSports.asp
{
    public partial class detail : System.Web.UI.Page
    {
        const string str = "Server=127.0.0.1;User ID=root;Password=;Database=isports;CharSet=utf8;";

        protected int news_num;

        protected string[] news_detail = new string[4];

        protected void Page_Load(object sender, EventArgs e)
        {
            user_Load();

            news_Load();
        }

        protected void user_Load()
        {
            MySqlConnection con = new MySqlConnection(str);//实例化链接

            con.Open();//开启连接

            if (Request.Cookies["userid"] != null)
            {
                //string userid = Server.HtmlEncode(Request.Cookies["userid"].Value);//获取cookie值

                string userid = Request.Cookies["userid"].Value;

                string sql = "select * from user where u_id='" + userid + "'";

                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlDataReader mr = cmd.ExecuteReader();

                if (mr.Read())
                {
                    log.InnerText = "欢迎：" + mr["u_name"].ToString();
                }

                //reg.InnerText = "退出";

                //reg.HRef = "logout.aspx";

            }

            else
            {

                log.InnerText = "登录";

                log.HRef = "login.aspx";

                shu.InnerText = "|";

                reg.InnerText = "注册";

                reg.HRef = "regist.aspx";

            }

            con.Close();
        }

        protected void news_Load()
        {
            news_num = Convert.ToInt32(Request.QueryString["a"]);

            MySqlConnection con = new MySqlConnection(str);

            con.Open();

            string sql = "select * from announcement where a_id = '" + news_num + "'";

            MySqlCommand cmd = new MySqlCommand(sql, con);

            MySqlDataReader mr = cmd.ExecuteReader();

            while (mr.Read())
            {
                news_detail[0] = mr["a_title"].ToString();

                news_detail[1] = DateTime.Parse(mr["a_time"].ToString().Trim()).ToShortDateString();

                news_detail[2] = mr["a_img"].ToString();

                news_detail[3] = mr["a_description"].ToString();

            }

            con.Close();
        }
    }
}