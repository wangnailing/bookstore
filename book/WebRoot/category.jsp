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
        <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="category.jsp">�鼮</a></li>
        <li><a href="specials.jsp">�ؼ��鼮 </a></li>
        <li><a href="register.jsp">ע��  </a></li
        >
        <li><a href="myaccount.jsp">��¼</a></li><li><a href="contact.jsp">��ϵ����</a></li>
        <li><a href="about.jsp">��������  </a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="crumb_nav"> <a href="index.jsp">��ҳ</a> &gt;&gt; �鼮 </div>
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�鼮</div>
      <div class="new_products">
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
		 <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.htm">����</a>
          <div class="new_prod_bg"> <a href="details.htm"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>��<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      
      <div class="cart">
        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" width="21" height="18"/></span><a href="cart.jsp" class="view_cart">�ҵĹ��ﳵ</a></div></div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">�������ǵ��̵�</span></div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=25" class="STYLE1"><span class="STYLE1">���ŵĵ�Ǹ��</span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=25"><img src="picture/waipo.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=26"> <span class="STYLE1">�����ȫ����·��</span></span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=26"><img src="picture/congni.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=27"><span class="STYLE1">�漣�к�</span></span></span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=27"><img src="picture/qijinanhai.png" width="100" height="100" /></a></div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>����</div>
        <ul class="list">
          <li><a href="#">��ѧ��</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">С˵��</a></li>
          <li><a href="#">�ٶ���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��ʷ��</a></li>
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
    <div class="right_footer">  <a href="index.jsp">��ҳ</a> <a href="about.jsp">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.jsp">��ϵ����</a>    </div>
  </div>
</div>
</body>
</html>
