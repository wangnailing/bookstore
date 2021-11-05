<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<%@ page import="com.cart.po.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
       <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="category.jsp">�鼮</a></li>
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
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�ҵĹ��ﳵ</div>
      <div class="feat_prod_box_details">
        <table class="cart_table">
     
          <tr class="cart_title">
            <td>ͼƬ</td>
            <td><span style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(223, 223, 223); display: inline ! important; float: none;">����</span></td>
            <td>����<br /></td>
            <td>����</td>
            <td>����<br /></td>
          </tr>
             <%
    List<Cart> userlist =(ArrayList<Cart>)session.getAttribute("cart");
  
    
     for(int i=0;i<userlist.size();i++)
     {
      Cart  b= userlist.get(i);
      
      %>
       
          <tr>
            <td><img src="<%=b.getBookinfo().getPicture() %>" width="60" height="60" /></td>
            <td><%=b.getBookinfo().getBookname()%></td>
            <td>��<%=b.getBookinfo().getPrice() %></td>
            <td>1</td>
            <td>��<%=b.getBookinfo().getPrice() %></td>
         </tr>
      <%
     }
    %>
         
          <tr>
            <td colspan="4" class="cart_total"><span class="red">�ۿ�:</span></td>
            <td> ��287.9 </td>
          </tr>
          <tr>
            <td colspan="4" class="cart_total"><span class="red">����:</span></td>
            <td> ��287.9 </td>
          </tr>
        </table>
        <a href="index.htm" class="continue">&lt; ����</a> <a href="#" class="checkout">����&gt;</a> </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      <div class="cart">
        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" width="21" height="18"/></span><a href="cart.jsp" class="view_cart">�ҵĹ��ﳵ</a></div></div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span><span style="color: rgb(5, 70, 126); font-family: Arial,Helvetica,sans-serif; font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(247, 238, 255); display: inline ! important; float: none;">�������ǵ��̵�</span></div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> <font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ������,�����Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font> </p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=22" class="STYLE1"><span class="STYLE1">�������㣬�˼�ֵ��</span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=22"><img src="picture/yushengyouni.PNG" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=23" class="STYLE1"><span class="STYLE1">�δ�ů�������</span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=23"><img src="picture/hechunvrang.png" width="100" height="100" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=24" class="STYLE1"><span class="STYLE1">���׵�����</span></span><br />
        </a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=24"><img src="picture/fuqindeliliang.png" width="100" height="100" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>����</div>
        <br /><ul class="list">
          
          <li><a href="#">��ѧ��</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">С˵��</a></li>
          <li><a href="#">�ٶ���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��ʷ��</a></li>
          <li></li>
          </ul>
        <div class="title"><span class="title_icon"><br /></span></div><ul class="list"></ul>
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>
    <div class="right_footer">&nbsp;  <a href="index.htm">��ҳ</a> <a href="about.htm">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.htm">��ϵ����</a>  </div>
  </div>
</div>
</body>
</html>
