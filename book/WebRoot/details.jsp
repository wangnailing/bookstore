<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.bed.po.po.*" %>
<%@ page import="com.user.po.*" %>
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
<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script src="js/prototype.js" type="text/javascript"></script>
<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="js/lightbox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/java.js"></script>
</head>
<body>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul> <li><a href="index.jsp">��ҳ</a></li>
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
      <div class="crumb_nav"> <a href="index.jsp">��ҳ </a> &gt;&gt;�鼮 </div>
      
      
      <%
    List <Bookinfo> userlist=(List <Bookinfo>)session.getAttribute("booklist");
     
     for(int i=0;i<userlist.size();i++)
     {
      
      Bookinfo  b= userlist.get(i);
      
      %>
    
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�鼮 </div>
      <div class="feat_prod_box_details">
        <div class="prod_img"><a href="details.htm"><img src="<%=b.getPicture() %>" alt="" title="" border="0" /></a> <br />
          <br />
          <a href="<%=b.getPicture() %>" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a> </div>
        <div class="prod_det_box">
          <div class="box_top"></div> 
          <div class="box_center">
            <div class="prod_title">���:<%=b.getBookname() %></div>
            <p class="details"><TRANS style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" newtip="��Ҳ��һ���ģ���ʥ�ģ������ջ�ģ������������ջ󡣷ǳ�С�ģ�����Ҫ��ϰ�ġ�" oldtip="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."><br /></TRANS><TRANS style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" newtip="��Ҳ��һ���ģ���ʥ�ģ������ջ�ģ������������ջ󡣷ǳ�С�ģ�����Ҫ��ϰ�ġ�" oldtip=" Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. "></TRANS></p>
            <div class="price"><strong>�۸�:<%=b.getPrice() %></strong> <span class="red"><br /></span></div>
            <div class="price"><strong>�ۿۺ�:<%=b.getPrice() %></strong> <br /><br /><br /><h1>
<font size="4"><a href="servlet/addd?bookid=<%=b.getId()%>">���빺�ﳵ</a></font>
 <font size="4"><a href="payadd.jsp?bookid=<%=b.getId()%> ">�������� </a></font>
</h1> </div>
            <a href="details.htm" class="more"></a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div id="demo" class="demolayout">
        <ul id="demo-nav" class="demolayout">
          <li><br /></li>
        </ul>
        <div class="tabs-container">
          <div style="display: none;" class="tab" id="tab2">
             <a href="padd.jsp?bookid=<%=b.getId() %>">���</a><br />
              <% 
    List<Remark> p =(ArrayList<Remark>)session.getAttribute("pinglun");
     for(int ii=0;ii<p.size();ii++)
     {
      Remark  r= p.get(ii);
      
      %>
       &nbsp;&nbsp; <%=r.getGrade()%>  &nbsp;&nbsp;
           <%=r.getRemark()%>
          
           <a href="servlet/pdel?pingid=<%=r.getId()%>&bookid=<%=r.getBookinfo().getId()%>">ɾ�� </a><br>
      <%
     }
    %> 
    </div>
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div class="right_content"><div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href='servlet/cartt?userid=<%=session.getAttribute("userid")%>' class="view_cart">�ҵĹ��ﳵ</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">�ҵĶ���</a></div><div class="cart">  
        <div class="home_cart_content"><br /> <span class="red"></span>  
      </div> </div>     <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>�������ǵ��̵� 
 
</div> 
<% }%>
      <div class="about"> 
        <p> <img src="images/about.gif" alt="" title="" class="right" /><font face="���ķ���">&nbsp;&nbsp;һ����꣬��ůһ�����У��������Զ������֮������ӭ������������꣬ϣ�����ǻ���������ͬ�ĸ��ܡ�</font></p> 
      </div> 
      <div class="right_box"> 
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>�ؼ�</div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=32">����ս�� </a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=32"><img height="100" width="100" src="picture/humazhange.png" /></a> </div> 
        </div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=33">���м�</a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=33"><img height="100" width="100" src="picture/yunzhongji.png" /></a></div> 
        </div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=34">СӢ������</a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=34"><img height="100" width="100" src="picture/xiaoyingxiong.png" /></a> </div> 
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
          <li><br /></li> 
          </ul> 
        <br /><br /></div> 
    </div>
    </div>
    <!--end of left content-->
    
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>
    <div class="right_footer"> <div class="footer"> 
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> 
      </div> 
    <div class="right_footer">  <a href="index.htm">��ҳ</a> <a href="about.htm">��������</a> <a href="#">���� </a> <a href="#">��˽����</a> <a href="contact.htm">��ϵ����</a>  </div> 
  </div><a href="#"></a> </div>
  </div>
</div>
</body>
<script type="text/javascript">

var tabber1 = new Yetii({
id: 'demo'
});

</script>
</html>
