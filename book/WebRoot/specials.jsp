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
        <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="specials.jsp">�ؼ��鼮 </a></li>
        <li><a href="register.jsp">ע��  </a></li>
        <li><a href="myaccount.jsp">��¼</a></li>
		<li><a href="contact.jsp">��ϵ����</a></li>
        <li><a href="about.jsp">��������  </a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�鼮</div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=10"><img src="picture/wenxueshishu6.png" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span class="STYLE1"></span>&nbsp;&nbsp;&nbsp;&nbsp; ����ʫ��</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=10" class="more">--����ϸ��- -</a>
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
            <div class="prod_title"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;"></span>&nbsp;&nbsp; �����ػ���</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=19" class="more">--����ϸ��--</a>
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
            <div class="prod_title"><span class="STYLE1">&nbsp;</span>&nbsp;&nbsp;&nbsp; ��ϲ����������������</div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=6" class="more">- -����ϸ��- -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=16"><img src="picture/lishitu1.PNG" width="100" height="100" /></a></div>
        <div class="prod_det_box"> <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
          <div class="prod_title"><span class="STYLE1"></span>&nbsp; �����ʷ</div>
          <div class="box_center">
            
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=16" class="more">--����ϸ��- -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>��<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      
     <div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">�ҵĹ��ﳵ</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">�ҵĶ���</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
        <div class="home_cart_content"><br /> <span class="red"></span> 
      </div> </div>     <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>�������ǵ��̵�</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У��������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div>
        <div class="new_prod_box">����
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=8"><img src="picture/wenxueqingshu3.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">�������ɳ���
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=11"><img src="picture/shaoerwobu.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">�˺���������
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=7"><img src="picture/wenxuecihousi.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>����</div>
        <br /><ul class="list">
          
          <li><a href="#">��ѧ��</a></li><li><a href="#">������</a></li>
          <li><a href="#">С˵��</a></li>
          <li><a href="#">�ٶ���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��ʷ��</a></li>
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
    <div class="right_footer">  <a href="index.htm">��ҳ</a> <a href="about.htm">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.htm">��ϵ����</a>  </div>
  </div>
</div>
</body>
</html>
