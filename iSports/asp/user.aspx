<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="iSports.asp.user" %>

<!doctype html>
<html>
        <head>
        <meta charset="utf-8">
        <title>isports-个人中心</title>
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
<div class="logo"> <a href=""><img src="../images/ddd.png" /></a> </div>
<div class="share"> <a href="http://user.qzone.qq.com/1526499023?ptlang=2052" class="re" target="_blank"></a> <a href="http://weibo.com/u/2378541440 " class="we" target="_blank"></a> <a class="wa" target="_blank"></a> <img src="../images/weixin.jpg" class="ewm" /> </div>
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

<div id="usercontent_right">
          <div class="reg_right_title"> 
              <b>个人中心</b> 
              <font>User Center</font> 
          </div>
          <div class="ser_right_title usetitle">
            <ul>
              <li><a class="act" href="user.aspx">个人资料</a></li>
              <li><a style="color:#000000" href="my_sign_up.aspx">我报名的约球</a></li>
              <li><a style="color:#000000" href="my_start.aspx">我发起的约球</a></li>
              <li><a style="color:#000000" href="appointment_child.aspx">申请约球</a></li>
              <li><a style="color:#000000" href="lease.aspx">场地预约</a></li>
            </ul>
          </div>
          
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="user_center_table" >
    <tbody>
              <tr>
        <td width="85" height="50" align="right">学号：</td>
        <td colspan="2"><%Response.Write(user_info[0]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">姓名：</td>
        <td colspan="2"><%Response.Write(user_info[1]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">学院：</td>
        <td colspan="2"><%Response.Write(user_info[2]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">昵称：</td>
        <td colspan="2"><%Response.Write(user_info[3]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">联系电话：</td>
        <td colspan="2"><%Response.Write(user_info[4]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">邮箱：</td>
        <td colspan="2"><%Response.Write(user_info[5]);%></td>
      </tr>
              <tr>
        <td width="85" height="50" align="right">兴趣爱好：</td>
        <td colspan="2"><%Response.Write(user_info[6]);%></td>
      </tr>
        <tr >
        <td height="50">&nbsp;</td>
        <td width="128"><input type="button" name="update_data" id="update_data" value="修改个人资料" class="reg_but" onclick="javascript:location.href='user_change.aspx';"></td>
        <td width="391">&nbsp;</td>
      </tr>
            </tbody>
  </table>
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
<div class="bg"> 
    <img id="bgImg" class="bg" alt="Background image" src="../images/reg_bg.jpg" /> 
</div>
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
