<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lease.aspx.cs" Inherits="iSports.asp.lease" %>

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
        <a href="lease_table.aspx" style="width:100px;color:orangered;right: 40%; font-size: 15px; margin-top: 60px; position: absolute;font-size:1.5rem;">场地租用表</a>
        <a href="javascript:history.back();"></a>
    </div>
     <div class="reg_right_content" id="content">
<form id="formBooking" name="formBooking" runat="server" style="">
    <table class="reg_right_content_table" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody runat="server">
        <tr runat="server" style="margin-bottom:10vh">
            <td align="right" height="50" width="120" style="color:white;font-size:1.5rem;">联系人姓名：</td>
            <td colspan="2"><input name="info[contact_name]" id="name" class="reg_text" type="text" runat="server"></td>
        </tr>
        <tr runat="server">
            <td align="right" height="50" width="120" style="color:white;font-size:1.5rem;">联系人学号：</td>
            <td colspan="2"><input name="info[apply_unit]" id="id" class="reg_text" type="text" runat="server"></td>
        </tr>
        <tr runat="server">
            <td align="right" height="50" width="120" style="color:white;font-size:1.5rem;">联系电话：</td>
            <td colspan="2"><input name="info[contact_phone]" id="phone" class="reg_text" type="text" runat="server"></td>
        </tr>
        <tr runat="server">
            <td align="right" height="50" width="150" style="color:white;font-size:1.5rem;">租借场地：</td>
            <td colspan="2" runat="server">
                <input runat="server" name="info[rental_place]" id="dbasket" value="dbasket" class="reg_radio" type="radio"><label for="dbasket" style="color:white;font-size:1.2rem;">&nbsp;大活篮球场</label>
                <input runat="server" name="info[rental_place]" id="dbad" value="dbad" class="reg_radio" type="radio"><label for="dbad" style="color:white;font-size:1.2rem;">&nbsp;大活羽毛球场</label>
                <input runat="server" name="info[rental_place]" id="dtable" value="dtable" class="reg_radio" type="radio"><label for="dtable" style="color:white;font-size:1.2rem;">&nbsp;大活乒乓球场</label>
                <input runat="server" name="info[rental_place]" id="tennis" value="tennis" class="reg_radio" type="radio"><label for="tennis" style="color:white;font-size:1.2rem;">&nbsp;网球场</label>
                <input runat="server" name="info[rental_place]" id="gqc" value="gqc" class="reg_radio" type="radio"><label for="gqc" style="color:white;font-size:1.2rem;">&nbsp;共青场</label>
                <input runat="server" name="info[rental_place]" id="volley5" value="volley5" class="reg_radio" type="radio"><label for="volley5" style="color:white;font-size:1.2rem;">&nbsp;5舍前排球场</label>
            </td>
        </tr>
        <tr runat="server">
            <td></td>
            <td colspan="2">
                <input runat="server" name="info[rental_place]" id="basket5" value="basket5" class="reg_radio" type="radio"><label for="basket5" style="color:white;font-size:1.2rem;">&nbsp;5舍前篮球场</label>
                <input runat="server" name="info[rental_place]" id="hdbasket" value="hdbasket" class="reg_radio" type="radio"><label for="hdbasket" style="color:white;font-size:1.2rem;">&nbsp;河东篮球场</label>
                <input runat="server" name="info[rental_place]" id="fzcc2" value="fzcc2" class="reg_radio" type="radio"><label for="fzcc2" style="color:white;font-size:1.2rem;">&nbsp;二附中操场</label>
            </td>
        </tr>
        <tr runat="server">
            <td align="right" height="50" width="120" style="color:white;font-size:1.5rem;">活动日期：</td>
            <td colspan="2"><input runat="server" name="info[use_date]" id="use_date" class="Wdate reg_text" type="text"><a style="color:white;font-size:1.2rem;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;(格式：YYYY-MM-DD)&nbsp&nbsp;</a><a style="color:red">请提前1至5日预约场地</a></td>
        </tr>
        <tr>
            <td align="right" height="50" width="120" style="color:white;font-size:1.5rem;">活动时间段：</td>
            <td colspan="2" style="padding: 10px 0;">
                <table class="no_border" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time1" value="08:00-10:00" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time1" style="color:white;font-size:1.2rem;">8:00-10:00</label></td>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time2" value="10:00-12:00" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time2" style="color:white;font-size:1.2rem;">10:00-12:00</label></td>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time3" value="12:00-13:30" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time3" style="color:white;font-size:1.2rem;">12:00-13:30</label></td>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time4" value="13:30-15:00" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time4" style="color:white ;font-size:1.2rem;">13:30-15:00</label></td>
                    </tr>
                    <tr>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time5" value="15:00-17:00" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time5" style="color:white ;font-size:1.2rem;">15:00-17:00</label></td>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time6" value="17:00-18:30" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time6" style="color:white ;font-size:1.2rem;">17:00-18:30</label></td>
                        <td align="center" width="25"><input runat="server" name="info[use_time][]" class="reg_radio" id="use_time7" value="18:30-20:00" type="checkbox"></td>
                        <td align="left" width="150"><label for="use_time7" style="color:white;font-size:1.2rem;">18:30-20:00</label></td>
                    </tr>
                </tbody>
                </table>
            </td>
        </tr>
        <tr runat="server">
            <td height="100">&nbsp;</td>
            <td width="128">&nbsp;</td>
            <td class="tk" width="400" runat="server"><asp:Button ID="sub" style="right: 65%; position: absolute;" Text="提 交" CssClass="reg_but" OnClick="sub_Click" runat="server" /></td>
        </tr>
    </tbody></table>
</form>            </div>
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