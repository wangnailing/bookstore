<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>我的账户</div>
      <div class="feat_prod_box_details"><font face="华文仿宋">&nbsp;&nbsp;一个书店，温暖一座城市，带你领略独立书店之美
          。欢迎你来到我们书店，希望我们会给你带来不同的感受。</font>
        <div class="contact_form">
          <div class="form_subtitle">登陆到您的用户</div>
          <form name="register" action="servlet/LoginServlet">
            
            <div class="form_row"> 
              <div style="padding: 10px 0px; width: 335px; clear: both; color: rgb(165, 61, 23); font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" class="form_row"><label style="padding: 4px 5px 0px 0px; width: 75px; float: left; font-size: 12px; text-align: right; color: rgb(51, 51, 51);" class="contact"><strong><TRANS newtip="用户名：" oldtip="Username:">用户名：</TRANS></strong></label><input type="text" name="username" style="border: 1px solid rgb(223, 223, 223); width: 253px; height: 18px; background-color: rgb(255, 255, 255); color: rgb(153, 153, 153); float: left;" class="contact_input" /></div><div style="padding: 10px 0px; width: 335px; clear: both; color: rgb(165, 61, 23); font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" class="form_row"><label style="padding: 4px 5px 0px 0px; width: 75px; float: left; font-size: 12px; text-align: right; color: rgb(51, 51, 51);" class="contact"><strong><TRANS newtip="密码：" oldtip="Password:">密码：</TRANS></strong></label><input type="text" name="userpwd" style="border: 1px solid rgb(223, 223, 223); width: 253px; height: 18px; background-color: rgb(255, 255, 255); color: rgb(153, 153, 153); float: left;" class="contact_input" /></div><div style="padding: 10px 0px; width: 335px; clear: both; color: rgb(165, 61, 23); font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" class="form_row"><div style="padding: 0px 0px 0px 80px;" class="terms"><input type="checkbox" name="terms" /><TRANS newtip="记住我" oldtip=" Remember me ">记住我</TRANS></div></div><br /><br /><br /><div class="form_row"> 
              <input type="submit" class="register" value="登陆" /> 
            </div><br /></div><div class="form_row">
              
            </div>
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    
    <br /><div class="right_content">
      
      <div class="currency">&nbsp; <span class="red"></span><a href="#"><strong></strong></a> </div>
     <div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">我的购物车</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">我的订单</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
        <div class="home_cart_content"><br /> <span class="red"></span> 
      </div> </div>   <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于我们的商店</div>
      <div class="about">
         <font face="华文仿宋">一个书店，温暖一座城市，你领略独立书店之美。欢迎你来到我们书店，希望我们会给你带来不同的感受。</font></div><div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>特价</div>
        <div class="new_prod_box">亲爱的女儿+亲爱的儿子
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=43"><img src="picture/qinai.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">夏日终曲
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=44"><img src="picture/xiari.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">最初之前
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=45"><img src="picture/zuichu.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>类型</div>
        <br /><ul class="list">
          
          <li><a href="#">文学类</a></li>
          <li><a href="#">科普类</a></li>
          <li><a href="#">小说类</a></li>
          <li><a href="#">少儿类</a></li>
          <li><a href="#">传记类</a></li>
          <li><a href="#">历史类</a><br />
      </li>
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
