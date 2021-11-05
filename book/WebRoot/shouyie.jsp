<%@ page language="java" import="java.util.*"  pageEncoding="gb2312"%>
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
    <div class="left_content"><a href="index.htm"><img border="0" src="images/logo.gif" alt="" title="" /></a>
    
       <tr> 
           <td><br /></td><td><br /></td><td><br /></td></tr><br /><div id="demo" class="demolayout"> 
           <br /> <br /> <br /> <br /> <br /> <br /> <br />
           
           
        <ul id="demo-nav" class="demolayout"> 
          <li><a class="active" href="#tab1">用户管理</a></li> 
          <li><a href="#tab2">书籍管理</a></li> 
          <li><a></a></li> 
        </ul> 
        <div class="tabs-container"> 
          <div style="display: block;" class="tab" id="tab1"> 
          <table>   <tr>
    <td>ID</td>
    <td>姓名</td>
    <td>邮件</td>
    <td>修改</td>
    <td>删除</td>
  </tr>
  <% List<Userinfo> userlist=(List <Userinfo>)session.getAttribute("userlist"); 
      
     for(int i=0;i<userlist.size();i++) 
     { 
       
      Userinfo  b= userlist.get(i); 
       
      %> 
       <tr>
           <td><%=b.getId()%></td>
          <td><%=b.getUsername() %></td>
           <td><%=b.getEmail() %></td>
            <td><a href="servlet/userupdate?userid=<%=b.getId()%>">修改</a></td>
            <td><a href="servlet/DelServlet?userid=<%=b.getId()%>">删除 </a></td>
        </tr>
      <%
     }
    %>
 </table>  
             </div> 
          <div style="display: none;" class="tab" id="tab2">
          <table>   <tr>
    <td>ID</td>
    <td>书名</td>
    <td>作者</td>
    <td>修改</td>
    <td>删除</td>
  </tr>
  <% List<Bookinfo> booklist=(List <Bookinfo>)session.getAttribute("booklist"); 
      
     for(int i=0;i<booklist.size();i++) 
     { 
       
      Bookinfo  b= booklist.get(i); 
       
      %> 
       <tr>
           <td><%=b.getId()%></td>
          <td><%=b.getBookname() %></td>
           <td><%=b.getWriter() %></td>
            <td><a href="servlet/update?userid=<%=b.getId()%>">修改</a></td>
            <td><a href="servlet/del?userid=<%=b.getId()%>">删除 </a></td>
        </tr>
      <%
     }
    %></table>
     <a href="tianjia.jsp">添加</a>
   </div> 
          <div style="display: none;" class="tab" id="tab3"></div> 
        </div> 
      </div> 
       
    </div>
    <div id="menu">
      <ul></ul>
    </div>
  </div>
  <div class="center_content">
    
    <!--end of left content-->
    <div class="right_content"><br /><div class="right_box"><ul class="list"><li></li>
          </ul>
        <br /><br /></div>
    </div>
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
    <div class="right_footer">  <a href="index.htm"><br /></a><a href="contact.htm"></a>  </div> 
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
