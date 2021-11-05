<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
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
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">联系我们</span></div>
      <div class="feat_prod_box_details">
        <p class="details"> <span style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); display: inline ! important; float: none;"></span> </p>
        <div class="contact_form">
          <div class="form_subtitle">意见</div>
		  <form action="aa">
          <div class="form_row">
            <label class="contact"><strong>姓名:</strong></label>
            <input type="text" class="contact_input" />
          </div>
          <div class="form_row">
            <label class="contact"><strong>邮件:</strong></label>
            <input type="text" class="contact_input" />
          </div>
          <div class="form_row">
            <label class="contact"><strong>电话:</strong></label>
            <input type="text" class="contact_input" />
          </div>
          <div class="form_row">
            <label class="contact"><strong>公司:</strong></label>
            <input type="text" class="contact_input" />
          </div>
          <div class="form_row">
            <label class="contact"><strong>信息:</strong></label>         
		    <textarea cols="33" rows="4" class="contact_input"></textarea>

          </div>
          <div class="form_row"> <a href="#" class="contact">提交</a> </div>
		  </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      <div class="languages_box"> <span class="red"><br /></span> 
     <div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">我的购物车</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">我的订单</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
        <div class="home_cart_content"><br /> <span class="red"></span> 
      </div> </div>   </div> 
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">关于我们的商店</span></div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="华文仿宋">&nbsp;&nbsp;一个书店，温暖一座城市，带你领略独立书店之美，欢迎你来到我们书店，希望我们会给你带来不同的感受。</font>. </p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>特折</div>
        <div class="new_prod_box"> <a href="details.jsp?bookname=28">纯真告别</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=28"><img src="picture/chunzhen.png" width="100" height="100" /></a> </div>
          <a href="details.jsp?bookname=29">我的京都</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=29"><img src="picture/wodejingdu.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp?bookname=30">萤火虫小巷</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=30"><img src="picture/yinghuocheng.png" width="100" height="100" /></a></div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp?bookname=31">望乡的牧神</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=31"><img src="picture/wangxiangdemushen.png" width="100" height="100" /></a> </div>
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
        <div class="title"><span class="title_icon"></span><br /></div>
        
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>   
    <div class="right_footer"> <a href="index.htm">首页</a> <a href="about.htm">关于我们</a> <a href="#">服务 </a> <a href="#">隐私政策</a> <a href="contact.htm">联系我们</a>  </div>
  </div>
</div>
</body>
</html>
