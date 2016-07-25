<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="iSports.asp.appointment" %>

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
<div id="usercontent_right">
          <div class="reg_right_title"> <b>相约球场</b> <font>Court</font> <a href="appointment_child.aspx">
            <input onClick="appointment_child.aspx" style="position: absolute; right: 47%; top: 200px;" type="button" name="new_appointment" id="new_appointment" value="新建约球" class="top_btn"/>
            </a> </div>
          <div class="ser_right_title usetitle">
    <div id="filter">
              <dl>
        <dt>球类：</dt>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"]==null || Request.QueryString["balltype"] == "") Response.Write("class='seled'");%> href="?balltype=&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">全部</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "basketball") Response.Write("class='seled'");%> href="?balltype=basketball&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">篮球</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "soccer") Response.Write("class='seled'");%> href="?balltype=soccer&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">足球</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "badminton") Response.Write("class='seled'");%> href="?balltype=badminton&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">羽毛球</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "tabletennis") Response.Write("class='seled'");%> href="?balltype=tabletennis&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">乒乓球</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "tennis") Response.Write("class='seled'");%> href="?balltype=tennis&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">网球</a></div>
                </dd>
        <dd>
                  <div><a <% if (Request.QueryString["balltype"] == "volleyball") Response.Write("class='seled'");%> href="?balltype=volleyball&week=<% if (Request.QueryString["week"] != null) Response.Write(Request.QueryString["week"]);%>">排球</a></div>
                </dd>
      </dl>
              <dl>
        <dt>时间：</dt>
        <dd>
                  <div style="height:24px;"><a <% if (Request.QueryString["week"] == null || Request.QueryString["week"] == "") Response.Write("class='seled'");%>  href="?week=&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">全部</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "1") Response.Write("class='seled'");%> href="?week=1&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周一</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "2") Response.Write("class='seled'");%> href="?week=2&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周二</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "3") Response.Write("class='seled'");%> href="?week=3&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周三</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "4") Response.Write("class='seled'");%> href="?week=4&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周四</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "5") Response.Write("class='seled'");%> href="?week=5&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周五</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "6") Response.Write("class='seled'");%> href="?week=6&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周六</a></div>
                </dd>
        <dd>
                  <div><a <% if ( Request.QueryString["week"] == "7") Response.Write("class='seled'");%> href="?week=7&balltype=<% if (Request.QueryString["balltype"] != null) Response.Write(Request.QueryString["balltype"]); %>">周日</a></div>
                </dd>
      </dl>
            </div>
  </div>
          <div class="clear"></div>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="usr_table2" style="background:none">
    <thead>
      <tr>
        <td height="35">约球细目</td>
        <td align="right" style="padding-right: 30px;">更新时间</td>
      </tr>
    </thead>
    <tbody>
      <%
          for(int i = 0; i < count && i < idx; i++)
          {
              if (i % per_page_num == 0) Response.Write("<tr class='tr_project_name project_name_first'>");
              else Response.Write("<tr class='tr_project_name'>");
      %>
            <td width="80%" align="left" class="case_name"><span>No.<% Response.Write(appoint[i, 0]); %></span><a href="<% Response.Write("appointment_detail.aspx?a=" + appoint[i, 0]); %>"><% Response.Write(appoint[i, 2]); %></a></td>
            <td align="right"><% Response.Write(appoint[i, 8]); %></td>
            <tr class="proj_cont" style="display: table-row;">
              <td colspan="3"><table class="tab_cont">
                <tbody>
                  <tr class="tr_hidden tr355">
                      <td class="color999"><% Response.Write(appoint[i, 3]); %> <br>
                      球类：<% Response.Write(appoint[i, 3]); %>&nbsp;&nbsp;| 时间：<% Response.Write(appoint[i, 7]); %> &nbsp;&nbsp;|&nbsp;&nbsp;地点：<% Response.Write(appoint[i, 5]); %>&nbsp;&nbsp;| 人数：<% Response.Write(appoint[i, 10] + "/" + appoint[i, 6]); %></td>
                      <% if(!Convert.ToBoolean(appoint[i,9])) {%>
                      <td align="right"><a href="<% Response.Write("appointment_detail.aspx?a=" + appoint[i, 0]); %>" class="xmdj sc_no" style="left: -50px; background:#ed6f1b">详情</a></td>
                      <% }else{%>
                      <td align="right" valign="top"><a class="xmdj sc_no" style="left: -50px; background: #CCCCCC">报名已截止</a></td>
                      <% }%>
                    </tr>
                  <tr class="tr_hidden tr355">
                      <td class="case_info"><% Response.Write(appoint[i, 4]); %></td>
                      <td align="center" valign="top">&nbsp;</td>
                    </tr>
                </tbody>
                </table></td>
            </tr>
        <%
        }
        %>
      </tbody>
    
  </table>
    <div class="pager">当前是：<% Response.Write(page); %>/<% Response.Write(page_num); %>页 共<% Response.Write(count); %>条信息
    <%
       if (page == 1) Response.Write("<span class=''>首页</span> <span class=''>上一页</span>");
       else
       {
    %>
    <a href="news.aspx">首页</a> <a href="?classid=6593&amp;page=<% Response.Write(page - 1); %>">上一页</a>
    <%
       }
    %>
    <% if(page<page_num){%>
    <a href="?classid=6593&amp;page=<% Response.Write(page + 1); %>">下一页</a>
    <%
       }else {
    %>
    <span>下一页</span>
    <% } %>
    <% if(page<page_num){%>
    <a href="?classid=6593&amp;page=<% Response.Write(page_num); %>">尾页</a>
    <% }else {%>
    <span>尾页</span>
    <% } %>
    第
    <select name="PB_Page_Select" onchange="location.href='?classid=6593&amp;page='+this.value">
    <% for(int i = 1; i <= page_num; i++) {
            if (i == page) {
    %>
                <option value="<% Response.Write(i); %>"" selected="selected"><% Response.Write(i); %>
         <% }else {%>
                 <option value="<% Response.Write(i); %>""><% Response.Write(i); %></option>
    <%
            }
       }
    %>
    </select>页</div></div>
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
<ul class="bottom"><img src="../images/closed_03.jpg" id="close_img" />
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