<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment_child.aspx.cs" Inherits="iSports.asp.appointment_child" %>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>isports-相约球场</title>
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
        }
    )
        $("#xwhd2").mouseover(
        function(){
            $(this).addClass('hover');
            $("#xwhd1").removeClass('hover');
            $("#con_xwhd_2").show();
            $("#con_xwhd_1").hide();
        }
    )
    })
    
</script>
<div id="reg_right" class="apply_right">
    <div class="reg_right_title">
                <b>约球申请</b> <font>Appointment</font>
                <a href="javascript:history.back();"></a>
    </div>
     <div class="reg_right_content" id="content">

<style type="text/css">
    
    .time,.end_time{
        width: 88px;
    }
    
</style>
<script type="text/javascript">
    
    var is_login = '1210';
    var w_size = $(window).width();
    
    $(function(){
        if(is_login != '' && w_size < 1440 ){
            $("#right_bottom").hide();
            $(".bottom").hide();
        }        
    })
    
</script>

<form runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="reg_right_content_table">
        <tbody runat="server">
        <tr runat="server">
            <td width="120" height="50" align="right"><b>约球标题：</b></td>
            <td colspan="2" runat="server"><input name="title" id="project_name" type="text" class="reg_text" runat="server"></td>
        </tr>
        <tr>
            <td width="120" height="50" colspan="3" style="font-weight: bold;">约球人信息
            </td>
        </tr>
        <tr runat="server">
            <td width="120" height="50" align="right">姓名：</td>
            <td colspan="2" runat="server"><input id="a_name" name="name" type="text" class="reg_text" runat="server"></td>
        </tr>
        <tr runat="server">
            <td width="120" height="50" align="right">学号：</td>
            <td colspan="2" runat="server"><input id = "a_id" name="id" type="text" class="reg_text" runat="server"></td>
        </tr>
        <tr runat="server">
            <td width="120" height="50" align="right">联系电话：</td>
            <td colspan="2" runat="server"><input id="phone" name="phone"  type="text" class="reg_text" runat="server"></td>
        </tr>
    <tr>
            <td height="50" colspan="3" style="font-weight: bold;">约球球类</td>
        </tr>
        <tr>
            <td height="10" colspan="3"></td>
        </tr>
        <tr runat="server">
            <td height="50" align="right">球类：</td>
            <td colspan="2" runat="server">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="basketball" value="basketball" runat="server">篮球&nbsp;&nbsp;</label>
                            </td>
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="soccer" value="soccer" runat="server">足球&nbsp;&nbsp;</label>
                            </td>
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="badminton" value="badminton" runat="server">羽毛球&nbsp;&nbsp;</label>
                            </td>
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="tabletennis" value="tabletennis" runat="server">乒乓球&nbsp;&nbsp;</label>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="tennis" value="tennis" runat="server">网球&nbsp;&nbsp;</label>
                            </td>
                            <td runat="server">
                                <label><input type="radio" name="project_type" id="volleyball" value="volleyball" runat="server">排球&nbsp;&nbsp;</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" height="50" colspan="3" style="font-weight: bold;">约球简介：</td>
        </tr>
        <tr>
            <td height="50" align="right">时间：</td>
            <td colspan="2"><input name="time" id="time" type="text" class="reg_text" runat="server">(格式为YYYY-MM-DD HH:MM:SS)</td>
        </tr>
        <tr>
            <td height="50" align="right">地点：</td>
            <td colspan="2"><input id="place" name="place" type="text" class="reg_text" runat="server"></td>
        </tr>
        <tr>
            <td height="50" align="right">人数：</td>
            <td colspan="2"><input id="people_num" name="people" type="text" class="reg_text" runat="server"></td>
        </tr>
        <tr>
            <td height="50" align="right">个性宣传：</td>
            <td><textarea name="slogen" cols="75" rows="3" class="reg_textarea reg_textarea2" id="project_brief" runat="server"></textarea></td>
      <tr>
            <td height="80">&nbsp;</td>
            <td width="391" class="tk" colspan="2">
                <asp:Button Text ="提 交" CssClass="reg_but" runat="server" OnClick="Unnamed_Click" />
            </td>
        </tr>     
    </tbody>
    </table>
</form>
     </div>
</div>

<div id="right_bottom">

</div>
<div class="bg"> <img id="bgImg" class="bg" alt="Background image" src="../images/appoint_bg.jpg" /> </div>
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
  