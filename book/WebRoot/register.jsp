
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
        
        <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="specials.jsp">�ؼ��鼮 </a></li>
        <li><a href="register.jsp">ע��  </a></li>
        <li><a href="myaccount.jsp">��¼</a></li>
		<li><a href="contact.jsp">��ϵ����</a></li>
        <li><a href="about.jsp">��������  </a></li>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>ע��</div>
      <div class="feat_prod_box_details">
        <p class="details"> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У��������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p>
        <div class="contact_form">
          <div class="form_subtitle">�������ʻ�</div>
          <form name="register" action="servlet/AddServlet">
            <div class="form_row">
              <label class="contact"><strong>�û�����</strong></label>
              <input type="text" name="name" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>���룺</strong></label>
              <input type="text" name="pwd" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>��������:</strong></label>
              <input type="text" name="email" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>��ַ:</strong></label>
              <input type="text" name="address" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>��������:</strong></label>
              <input type="text" name="post" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>�û�����:</strong></label>
              <input type="text" name="level" class="contact_input" /> </div>
              <div class="form_row">
               <label class="contact"><strong>�û�Ȩ��:</strong></label>
              <input type="text" name="power" class="contact_input" />
            </div>
            <div class="form_row">
              <div class="terms">
                <input type="checkbox" name="terms" />
                ��ͬ�� <a href="#">���������</a> </div>
            </div>
            <div class="form_row">
              <input type="submit" class="register" value="ע��" />
            </div>
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      
      <div class="currency">&nbsp; <span class="red"></span><a href="#"><strong></strong></a> </div>
     <div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">�ҵĹ��ﳵ</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">�ҵĶ���</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
        <div class="home_cart_content"><br /> <span class="red"></span> 
      </div> </div>   
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>�������ǵ��̵�</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div>
        <div class="new_prod_box">ͷ��������
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=46"><img src="picture/toutiao.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">������Ҫ��ʽ��
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=47"><img src="picture/shenghuo.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">�����к�
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=48"><img src="picture/yangyunanhai.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>����</div>
        <ul class="list">
          <li><br /></li>
          <li><a href="#">��ѧ��</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">С˵��</a></li>
          <li><a href="#">�ٶ���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��ʷ��</a></li>
        </ul>
        <br />
        <br />
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
     </div>
    <div class="right_footer">  <a href="index.htm">��ҳ</a> <a href="about.htm">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.htm">��ϵ����</a>  </div>
  </div>
</div>
</body>
</html>
