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
.STYLE3 {color: #000000}
-->
</style>
</head>
<body>
 
 
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
    
      <ul> <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="specials.jsp">�ؼ��鼮 </a></li>
        <li><a href="register.jsp">ע��  </a></li>
        <li><a href="myaccount.jsp">��¼</a></li>
		<li><a href="contact.jsp">��ϵ����</a></li>
        <li><a href="about.jsp">��������&nbsp;&nbsp; <br /></a></li>
         <li>     </li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�鼮</div><div class="feat_prod_box">
        <div class="prod_img"><a href="servlet/booklist?bookname=35"><img src="picture/xiaoshuo2.png" width="100" height="100" /></a></div>
        <div class="prod_det_box">
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">ͼ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE3">���˵���</span></span></div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=35" class="more" >- ����ϸ�� -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
      
        <div class="prod_img"><a href="servlet/booklist?bookname=2"><img src="picture/shaoeraodang.png" width="100" height="100" /></a></div>
        <div class="prod_det_box">
          <div class="box_top"></div>
          <div class="box_center"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">ͼ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE3">�µ�Ů��</span></span>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=2" class="more">- ����ϸ�� -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
      
        <div class="prod_img"><a href="servlet/booklist?bookname=11"><img src="picture/shaoerwobu.png" width="100" height="100" /></a></div>
        <div class="prod_det_box">
          <div class="box_top"></div>
          <div class="box_center"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">ͼ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE3">�������ɳ���</span></span>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=11" class="more">- ����ϸ�� -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="feat_prod_box">
       <div class="prod_img"><a href="servlet/booklist?bookname=7"><img src="picture/wenxuecihousi.png" width="100" height="100" /></a></div>
        <div class="prod_det_box">
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title"><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">ͼ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE3">�˺���������</span></span></div>
            <p class="details"><br /></p>
            <a href="servlet/booklist?bookname=7" class="more" >- ����ϸ�� -</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      
      <div class="feat_prod_box">
      <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">������</span></div>
      <div class="new_products">
        <div class="new_prod_box"> 3��6�걦��˯ǰ�ɳ�����
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=36"><img src="picture/3-6suibaobao.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">�ڶ���
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=37"><img src="picture/baiduren.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> ����������
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=38"><img src="picture/kuaileyangyufa.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="clear"></div>
    </div></div>
    <!--end of left content-->
    <div class="right_content">
      <div class="cart"> 
         </div><div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href="servlet/cartt?userid=<%=session.getAttribute("userid")%>" class="view_cart">�ҵĹ��ﳵ</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">�ҵĶ���</a></div><a href="servlet/pay" class="view_cart"></a><div class="cart"> 
         </div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>�������ǵ��̵�</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div>
        <div class="new_prod_box">���±绤������
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=40"><img src="picture/xingshibianhu.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">DK�ٶ����ִ�ٿ�
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=41"><img src="picture/yinyuedabaike.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box">������ǧ��
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=42"><img src="picture/aijisiqiannian.png" width="100" height="100" /></a></div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>����</div>
        <br /><ul class="list">
          
          <li><br /></li>
          <li><a href="#">��ѧ��</a></li>
          <li><a href="#">������</a></li><li><a href="#">С˵��</a></li>
          <li><a href="#">�ٶ���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��ʷ��</a></li>
          </ul>
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt=""  /><br />
      </div>
    <div class="right_footer"> <div class="right_footer"> <a href="index.htm">��ҳ</a> <a href="about.htm">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.htm">��ϵ����</a>  </div><a href="#"><br /></a><a href="#"></a> </div>
  </div>
</div>
<div style="text-align:center;">
<p><br /><a href="http://www.mycodes.net/" target="_blank"></a></p>
</div>
</body>
</html>
