<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_theme.aspx.cs" Inherits="iSports.asp.news_theme" %>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>isports-新建帖子</title>
        <meta http-equiv="X-UA-Compatible" content="IE=9" >
        <link rel="stylesheet" type="text/css" href="../css/old.css"/>
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
    <body>
        <div style="width:1024px; margin:0 auto; height:1px"></div>
        <div class="logo">
            <a href=""><img src="../images/ddd.png" /></a>
        </div>
        <div class="share">
            <a href="http://user.qzone.qq.com/1526499023?ptlang=2052" class="re" target="_blank"></a>
            <a href="http://weibo.com/u/2378541440 " class="we" target="_blank"></a>
            <a class="wa" target="_blank"></a>
            <img src="../images/weixin.jpg" class="ewm" />
        </div>
        <div id="left">

        </div>
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
            <div class="right usercenter">
                <script type="text/javascript">
                    var site_theme_path_rl='themes/222/template/';

                    $().ready(function(){
                        $(".usercenter").hover(function(){
                            $(this).addClass("usercenter_on");
                            $(this).children("ul").show();
                            $(this).find("img").attr("src",site_theme_path_rl+"images/se_Add_06.jpg");
                        },function(){
                            $(this).removeClass("usercenter_on");
                            $(this).children("ul").hide();
                            $(this).find("img").attr("src",site_theme_path_rl+"images/se_Add_07.jpg");
                        })
                    });

                </script>
      <span>
                <a id="log" runat="server"></a>
                <a id="shu" runat="server"></a>
                <a id="reg" runat="server"></a>
            </span>
                    <div class="clear"></div>
                    <ul>
                        <li><a href="user.aspx">个人资料</a></li>
                        <li><a href="my_sign_up.aspx">我报名的约球</a></li>
                        <li><a href="my_start.aspx">我发起的约球</a></li>
                        <li><a href="lease.aspx">场地预约</a></li>
                        <li><a href="logout.aspx">退出</a></li>
                    </ul>
        </div>
    <div class="clear"></div>
     </div>
<div id="news_right">
    <div class="reg_right_title">
        <b>球赛论坛</b> <font>Forum</font><br> </div>
  <div class="new_theme" runat="server">  
        <form runat="server">
          <span style="font-size:18px">话题：</span><br><br>
          <input type="text" name="title" class="reg_text" id="topic" runat="server"><br><br><br>
          <span style="font-size:18px">我的观点：</span><br><br>
          <textarea name="content" id="content" cols="80" rows="10" runat="server" style="resize:none; border-radius:5px;"></textarea><br><br><br>
             <p class="return" style="font-size:1.5rem"><a href="javascript:history.go(-1);">返回</a></p>          <asp:Button CssClass="reg_but" ID="submitBtn" OnClick="submitBtn_Click"  Text="提 交"  runat="server"/>
        </form>
  </div>
    
</div>
   
<div class="bg">
    <img id="bgImg" class="bg" alt="Background image" src="../images/bbs.jpg" />
</div>
<div id="right_bottom">
</div>
 <ul class="bottom">
        <img src="../images/closed_03.jpg" id="close_img" />
        <p>友情链接</p>
        <div class="friendlylink_list">
    <ul>
                        <li><a href="http://www.ecnu.edu.cn/" target="_blank">学校主页</a></li>
                                <li><a href="https://portal1.ecnu.edu.cn/cas/login?service=http%3A%2F%2Fportal.ecnu.edu.cn%2Fneusoftcas.jsp" target="_blank"> 公共数据库</a></li>
                                <li><a href="http://sports.sina.com.cn/" target="_blank"> 新浪竞技风暴</a></li>
                    </ul>
</div>    </ul>
</body>
</html>
