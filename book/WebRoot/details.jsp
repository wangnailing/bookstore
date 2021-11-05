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
      <ul> <li><a href="index.jsp">首页</a></li>
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
      <div class="crumb_nav"> <a href="index.jsp">首页 </a> &gt;&gt;书籍 </div>
      
      
      <%
    List <Bookinfo> userlist=(List <Bookinfo>)session.getAttribute("booklist");
     
     for(int i=0;i<userlist.size();i++)
     {
      
      Bookinfo  b= userlist.get(i);
      
      %>
    
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>书籍 </div>
      <div class="feat_prod_box_details">
        <div class="prod_img"><a href="details.htm"><img src="<%=b.getPicture() %>" alt="" title="" border="0" /></a> <br />
          <br />
          <a href="<%=b.getPicture() %>" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a> </div>
        <div class="prod_det_box">
          <div class="box_top"></div> 
          <div class="box_center">
            <div class="prod_title">简介:<%=b.getBookname() %></div>
            <p class="details"><TRANS style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" newtip="我也是一样的，神圣的，不受诱惑的，不受劳作的诱惑。非常小的，不需要练习的。" oldtip="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."><br /></TRANS><TRANS style="color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255);" newtip="我也是一样的，神圣的，不受诱惑的，不受劳作的诱惑。非常小的，不需要练习的。" oldtip=" Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. "></TRANS></p>
            <div class="price"><strong>价格:<%=b.getPrice() %></strong> <span class="red"><br /></span></div>
            <div class="price"><strong>折扣后:<%=b.getPrice() %></strong> <br /><br /><br /><h1>
<font size="4"><a href="servlet/addd?bookid=<%=b.getId()%>">加入购物车</a></font>
 <font size="4"><a href="payadd.jsp?bookid=<%=b.getId()%> ">立即购买 </a></font>
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
             <a href="padd.jsp?bookid=<%=b.getId() %>">添加</a><br />
              <% 
    List<Remark> p =(ArrayList<Remark>)session.getAttribute("pinglun");
     for(int ii=0;ii<p.size();ii++)
     {
      Remark  r= p.get(ii);
      
      %>
       &nbsp;&nbsp; <%=r.getGrade()%>  &nbsp;&nbsp;
           <%=r.getRemark()%>
          
           <a href="servlet/pdel?pingid=<%=r.getId()%>&bookid=<%=r.getBookinfo().getId()%>">删除 </a><br>
      <%
     }
    %> 
    </div>
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div class="right_content"><div class="title"><span class="title_icon"><img height="18" width="21" src="images/cart.gif" alt="" title="" /></span><a href='servlet/cartt?userid=<%=session.getAttribute("userid")%>' class="view_cart">我的购物车</a><span class="title_icon"></span><a href="servlet/pay" class="view_cart">我的订单</a></div><div class="cart">  
        <div class="home_cart_content"><br /> <span class="red"></span>  
      </div> </div>     <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于我们的商店 
 
</div> 
<% }%>
      <div class="about"> 
        <p> <img src="images/about.gif" alt="" title="" class="right" /><font face="华文仿宋">&nbsp;&nbsp;一个书店，温暖一座城市，带你领略独立书店之美。欢迎你来到我们书店，希望我们会给你带来不同的感受。</font></p> 
      </div> 
      <div class="right_box"> 
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>特价</div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=32">虎妈战歌 </a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=32"><img height="100" width="100" src="picture/humazhange.png" /></a> </div> 
        </div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=33">云中记</a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><a href="servlet/booklist?bookname=33"><img height="100" width="100" src="picture/yunzhongji.png" /></a></div> 
        </div> 
        <div class="new_prod_box"> <a href="servlet/booklist?bookname=34">小英雄雨来</a> 
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="servlet/booklist?bookname=34"><img height="100" width="100" src="picture/xiaoyingxiong.png" /></a> </div> 
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
          <li><a href="#">历史类</a></li> 
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
    <div class="right_footer">  <a href="index.htm">首页</a> <a href="about.htm">关于我们</a> <a href="#">服务 </a> <a href="#">隐私政策</a> <a href="contact.htm">联系我们</a>  </div> 
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
