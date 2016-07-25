<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lease_table.aspx.cs" Inherits="iSports.asp.lease_table" %>

<!doctype html>
<html>
        <head>
        <meta charset="utf-8">
        <title>isports-场馆租借</title>
        <meta http-equiv="X-UA-Compatible" content="IE=9" >
        <link rel="stylesheet" type="text/css" href="../css/old.css"/>
        <link rel="stylesheet" type="text/css" href="../css/media-queries.css"/>
        <script src="../js/jQuery.js"></script>
        <script src="../js/common.js"></script>
        <script type="text/javascript">
            var current_classid = '6515';
            var show_main_id = '';
            
            $(document).ready(function(){
                $("#nav a").each(function(i){
                    if(location.href.indexOf($(this).attr("href")) >-1){
                        $(this).addClass("slt");
                    }
                });
            })
            
        </script>
        </head>
        <body style="overflow-x:hidden">
<div style="width:1024px; margin:0 auto; height:1px"></div>
<div class="logo"> <a href=""><img src="../images/ddd.png" /></a> </div>
<div class="share"> 
    <a href="http://user.qzone.qq.com/1526499023?ptlang=2052" class="re" target="_blank"></a> 
    <a href="http://weibo.com/u/2378541440 " class="we" target="_blank"></a> 
    <a class="wa" target="_blank"></a> 
    <img src="../images/weixin.jpg" class="ewm" /> 
</div>
<div id="left"> </div>
<div id="nav">
          <div class="left">
            <ul>
                <li><a href="index.aspx" class="home">首页 </a></li>
                <li><a href="news.aspx">校园新闻</a></li>
                <li><a href="forum.aspx">球赛论坛</a></li>
                <li><a href="appointment.aspx">相约球场</a></li>
                <li><a href="lease.aspx">场馆租借</a></li>
                <li><a href="download.aspx">资料下载</a></li>
                <li><a href="about.aspx">关于我们</a></li>
            </ul>
  </div>
         <div class="right usercenter" id="user">
            <script type="text/javascript">
                $(function () {
                    var user = document.getElementById("user");
                    var menu = document.getElementById("menu");
                    var cookie_pos = document.cookie.indexOf("userid");
                    if (cookie_pos == -1) {
                        $("#user").removeClass("usercenter");
                        $("#menu").attr("style", "display:none");
                    }
                })
            </script>
            <script type="text/javascript">
        var site_theme_path_rl='themes/222/template/';

        $().ready(function(){
            $(".usercenter").hover(function(){
                $(this).addClass("usercenter_on");
                $(this).children("ul").show();
                $(this).find("img").attr("src",site_theme_path_rl+"../images/se_Add_06.jpg");
            },function(){
                $(this).removeClass("usercenter_on");
                $(this).children("ul").hide();
                $(this).find("img").attr("src",site_theme_path_rl+"../images/se_Add_07.jpg");
            })
        });

            </script>
            <span>
                <a id="log" runat="server"></a>
                <a id="shu" runat="server"></a>
                <a id="reg" runat="server"></a>
            </span>
            <div class="clear"></div>
            <ul id="menu">
                <li><a href="user.aspx">个人资料</a></li>
                <li><a href="my_sign_up.aspx">我报名的约球</a></li>
                <li><a href="my_start.aspx">我发起的约球</a></li>
                <li><a href="lease.aspx">场地预约</a></li>
                <li><a href="logout.aspx">退出</a></li>
            </ul>
        </div>          
<div class="clear"></div>
        </div>
<div id="reg_right" class="booking_right">
    <div class="reg_right_title">
        <script type="text/javascript">
            var show_main_id = '6594';
        </script>
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;场馆租借</b><font><a style="color:white">Lease</a></font>
        <a href="lease.aspx" style="color:orangered;font-size:1.2rem;">返回</a>
        <% if (date < 5){%> <a style="width:50px;color:orangered;font-size:1.2rem" href="<% Response.Write("?date=" + (date + 1));%>">下一天</a>
        <% }else{%> <a style="width:50px;color:gray;font-size:1.2rem">下一天</a><% } %>
        <% if (date > 0) {%> <a style="width:50px;color:orangered;font-size:1.2rem" href="<% Response.Write("?date=" + (date - 1)); %>"">上一天</a>
        <% } else {%> <a style="width:50px;color:gray;font-size:1.2rem">上一天</a><% } %>
    </div>
    <div class="reg_right_content" id="content">
        <form>
            <table class="reg_right_content_table" border="1" style="border-collapse:collapse">
                <tbody style="height:80px;width:250px;font-size:1.5rem;padding-left:20vw;">
                    <tr style="height:inherit;width:inherit">
                        <td style="color:white;font-size:large;width:inherit;text-align:center;" ><% if (date != 0) Response.Write(DateTime.Now.AddDays(date).GetDateTimeFormats('M')[0].ToString()); else Response.Write(DateTime.Now.GetDateTimeFormats('M')[0].ToString()); %></td>
                        <td style="color:white;width:inherit;text-align:center;">大活篮球场 </td>
                        <td style="color:white;width:inherit;text-align:center;">大活羽毛球场</td>
                        <td style="color:white;width:inherit;text-align:center;">大活乒乓球场</td>
                        <td style="color:white;width:inherit;text-align:center;">网球场</td>
                        <td style="color:white;width:inherit;text-align:center;">共青场</td>
                        <td style="color:white;width:inherit;text-align:center;">5舍前排球场</td>
                        <td style="color:white;width:inherit;text-align:center;">5舍前篮球场</td>
                        <td style="color:white;width:inherit;text-align:center;">河东篮球场</td>
                        <td style="color:white;width:inherit;text-align:center;">二附中操场</td>
                    </tr>
                    <% for (int j = 0; j < 7; j++)
                            { %>
                    <tr style="height:inherit">
                        <td style="color:white;text-align:center;"><% Response.Write((8 + 2 * j) + ":00-" + (10 + 2 * j) + ":00"); %></td>
                        <% for (int i = 0; i < 9; i++)
                            { %>
                        <td style="color:white;text-align:center;"><% Response.Write(lease_info[j, i]); %></td>
                        <% } %>
                    </tr>
                    <% } %>
                </tbody>                            
            </table>
        </form>           
    </div>
</div>

<div class="bg"> <img id="bgImg" class="bg" alt="Background image" src="../images/lease_bg.jpg" /> </div>
<div id="right_bottom"> </div>
<ul class="bottom">
          <img src="../images/closed_03.jpg" id="close_img" />
          <p>友情链接</p>
          <div class="friendlylink_list">
    <ul>
              <li><a href="http://www.ecnu.edu.cn/" target="_blank">学校主页</a></li>
              <li><a href="https://portal1.ecnu.edu.cn/cas/login?service=http%3A%2F%2Fportal.ecnu.edu.cn%2Fneusoftcas.jsp" target="_blank"> 公共数据库</a></li>
              <li><a href="http://sports.sina.com.cn/" target="_blank"> 新浪竞技风暴</a></li>
            </ul>
  </div>
        </ul>
</body>
</html>