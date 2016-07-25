<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="iSports.asp.about" %>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>isport-关于我们</title>
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
    
    <div id="contact_right">
    <p class="neititle">关于我们  About US</p>
    <div class="contact_right_top">
        <div class="contact_right_top_list">
    <ul>
        <li>
            <img src="../images/xie.jpg">
            <span><p>谢斌&nbsp&nbsp&nbsp;好好学长，后台开发</p> 
<!--                15216717719 <br />-->
                1542752218@qq.com </span>
        </li>
                <li>
            <img src="../images/wang.jpg">
            <span><p>彭逸枫&nbsp&nbsp&nbsp;认真负责，后台开发</p> 
<!--                 <br />-->
                308170166@qq.com </span>
        </li>
         <li>
            <img src="../images/wyx.jpg">
            <span><p>王迎晓&nbsp&nbsp&nbsp;美丽可爱，前端开发</p> 
<!--                 <br />-->
                784240394@qq.com </span>
        </li>
         <li>
            <img src="../images/who.jpg">
            <span><p>期待你们的加入</p> 
<!--                 <br />-->
                我们需要你们的联系方式 </span>
        </li>
            </ul>
</div>
<div class="clear"></div>

    <div class="contactrightbottom" id="content">
                <p>我们的iSports有许多功能，仍然需要继续完善和改进，期待更多的人愿意加入我们，一起完成我们校园的iSports！！！</p>
                <p>&nbsp;</p>
                <p>联系人：谢斌  13917829004</p>
                <p><br>
                </p>
<p>这就是我们团队的iSports网页~ </p>
            </div>
    
<!--    <div style="width:600px;height:400px;border:#ccc solid 1px; margin:20px 0;" id="dituContent"></div>-->
</div>

<script  type="text/javascript">
    
    
    function setTab(name,cursel,n){
        for(i=1;i<=n;i++){
            var menu=document.getElementById(name+i);
            var con=document.getElementById("con_"+name+"_"+i);
            menu.className=i==cursel?"hover":"";
            con.style.display=i==cursel?"block":"none";
        }
    }
    
    $().ready(function(){
        $(".right_bottom_right_list li").hover(function(){
            $(this).addClass("xmhd_hover");
        },function(){
            $(this).removeClass("xmhd_hover");
        })
        
        $("#xwhd1").mouseover(
        function(){
            $(this).addClass('hover');
            $("#xwhd2").removeClass('hover');
            $("#con_xwhd_1").show();
            $("#con_xwhd_2").hide();
            $("#con_xwhd_1 right1").show();
            $("#con_xwhd_1 left1").show();
            $("#con_xwhd_2 right1").hide();
            $("#con_xwhd_2 left1").hide();
                
        }
    )
        $("#xwhd2").mouseover(
        function(){
            $(this).addClass('hover');
            $("#xwhd1").removeClass('hover');
            $("#con_xwhd_2").show();
            $("#con_xwhd_1").hide();
            $("#con_xwhd_1 right1").hide();
            $("#con_xwhd_1 left1").hide();
            $("#con_xwhd_2 right1").show();
            $("#con_xwhd_2 left1").show();
        }
    )

            
        
        
    })
    
</script>

 
<div class="bg">
    <img id="bgImg" class="bg" alt="Background image" src="../images/about.jpg" />
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
  