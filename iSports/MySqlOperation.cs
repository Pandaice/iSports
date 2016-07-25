using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace iSports
{
    public class MySqlOperation
    {
        //建立数据库连接
        public static MySqlConnection getCon()
        {
            MySqlConnection con = null;
            try
            {
                string str = "Server=127.0.0.1;User ID=root;Password=;Database=isports;CharSet=gbk;";
                con = new MySqlConnection(str);
            }
            catch (MySqlException ex)
            {
                throw ex;
            }
            return con;
        }

        //执行cmd
        public static void cmdExcute(string str)
        {
            try
            {
                MySqlConnection con = getCon();
                con.Open();
                MySqlCommand cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (MySqlException ex)
            {
                throw ex;
            }
        }

        //获取MySqlDataReader
        public static MySqlDataReader getReader(string str)
        {
          
            MySqlDataReader reader = null;
            try
            {
                MySqlConnection con = getCon();
                con.Open();
                MySqlCommand cmd = new MySqlCommand(str, con);
                reader = cmd.ExecuteReader();
            }
            catch (MySqlException ex)
            {
                throw ex;
            }
            return reader;
        }

        //查询是否有数据结果
        public static bool f_isTrue(string str)
        {
            bool m = false;
            try
            {
                MySqlConnection con = getCon();
                con.Open();
                MySqlCommand cmd = new MySqlCommand(str, con);
                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                    m = true;
                con.Close();
            }
            catch (MySqlException ex)
            {
                throw ex;
            }
            return m;
        }

        //记录当前表中符合条件的记录条数
        public static int Count(string str)
        {
            int count = 0;
            try
            {
                MySqlConnection con = getCon();
                con.Open();
                MySqlCommand cmd = new MySqlCommand(str, con);
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                    count++;
                con.Close();
            }
            catch (MySqlException ex)
            {
                throw ex;
            }
            return count;
        }
    }
}
