<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.STYLE1 {color: #0000FF}
-->
</style>
</head>
<body>
<%response.setContentType("text/html;charset=gb2312");
request.setCharacterEncoding("gb2312");
String textContent=request.getParameter("name");
 %>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="specials.jsp">特价书籍 </a></li>
        <li><a href="register.jsp">注册  </a></li>
        <li><a href="myaccount.jsp">登录</a></li>
		<li><a href="contact.jsp">联系我们</a></li>
        <li><a href="about.jsp">关于我们  </a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>书籍</div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=10"><img src="picture/wenxueshishu6.png" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span class="STYLE1"></span>&nbsp;&nbsp;&nbsp;&nbsp; 枕上诗书</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=10" class="more">--更多细节- -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=19"><img src="picture/dengtashouhuren.png" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;"></span>&nbsp;&nbsp; 灯塔守护人</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=19" class="more">--更多细节--</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=6"><img src="picture/wenxueshengming2.png" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span class="STYLE1">&nbsp;</span>&nbsp;&nbsp;&nbsp; 我喜欢生命本来的样子</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=6" class="more">- -更多细节- -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=16"><img src="picture/lishitu1.PNG" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="prod_title"><span class="STYLE1"></span>&nbsp; 人类简史</div>
          <div class="box_center">
            
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=16" class="more">--更多细节- -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      
     <div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">我的购物车</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">我的订单</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
        <div class="home_cart_content"><br /> <span class="red"></span> 
      </div> </div>     <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于我们的商店</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="华文仿宋">&nbsp;&nbsp;一个书店，温暖一座城市，带你领略独立书店之美。欢迎你来到我们书店，希望我们会给你带来不同的感受。</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>特价</div>
        <div class="new_prod_box">情书
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=8"><img src="picture/wenxueqingshu3.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">马洛丽成长记
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=11"><img src="picture/shaoerwobu.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">此后再无余生
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=7"><img src="picture/wenxuecihousi.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>类型</div>
        <br /><ul class="list">
          
          <li><a href="#">文学类</a></li><li><a href="#">科普类</a></li>
          <li><a href="#">小说类</a></li>
          <li><a href="#">少儿类</a></li>
          <li><a href="#">传记类</a></li>
          <li><a href="#">历史类</a></li>
          <li></li>
          </ul>
        <div class="title"><span class="title_icon"></span><br /></div>
        <ul class="list">
          
          
          <li><br /></li>
        </ul>
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>
    <div class="right_footer">  <a href="index.htm">首页</a> <a href="about.htm">关于我们</a> <a href="#">服务 </a> <a href="#">隐私政策</a> <a href="contact.htm">联系我们</a>  </div>
  </div>
</div>
</body>
</html>
