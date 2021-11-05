<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.bed.po.po.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.STYLE1 {color: #000000}
-->
</style>
</head>
<body>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="category.jsp">书籍</a></li>
        <li><a href="specials.jsp">特价书籍 </a></li>
        <li><a href="register.jsp">注册  </a></li
        >
        <li><a href="myaccount.jsp">登录</a></li><li><a href="contact.jsp">联系我们</a></li>
        <li><a href="about.jsp">关于我们  </a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="crumb_nav"> <a href="index.jsp">首页</a> &gt;&gt; 书籍 </div>
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>书籍</div>
      <div class="new_products">
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
		 <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">书名</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      
      <div class="cart">
        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" width="21" height="18"/></span><a href="cart.jsp" class="view_cart">我的购物车</a></div></div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">关于我们的商店</span></div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="华文仿宋">&nbsp;&nbsp;一个书店，温暖一座城市，你领略独立书店之美。欢迎你来到我们书店，希望我们会给你带来不同的感受。</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>特价</div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=25" class="STYLE1"><span class="STYLE1">外婆的道歉信</span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=25"><img src="picture/waipo.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=26"> <span class="STYLE1">从你的全世界路过</span></span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=26"><img src="picture/congni.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=27"><span class="STYLE1">奇迹男孩</span></span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=27"><img src="picture/qijinanhai.png" width="100" height="100" /></a></div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>类型</div>
        <ul class="list">
          <li><a href="#">文学类</a></li>
          <li><a href="#">科普类</a></li>
          <li><a href="#">小说类</a></li>
          <li><a href="#">少儿类</a></li>
          <li><a href="#">传记类</a></li>
          <li><a href="#">历史类</a></li>
        </ul>
        <div class="title"><span class="title_icon"><br /></span></div>
        <ul class="list"></ul>
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>
    <div class="right_footer">  <a href="index.jsp">首页</a> <a href="about.jsp">关于我们</a> <a href="#">服务 </a> <a href="#">隐私政策</a> <a href="contact.jsp">联系我们</a>    </div>
  </div>
</div>
</body>
</html>
