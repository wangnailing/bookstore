<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"  pageEncoding="gb2312"%>
<%@ page import="com.bed.po.po.*" %>
<%@ page import="com.user.po.*" %>
<%

	response.setCharacterEncoding("gb2312");
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
           
           
      
          <form method="post" action="servlet/userupdate1"><% 
   Userinfo userid=(Userinfo)session.getAttribute("userid");
    %>
    
     编号：<input type="text" name="id"  value="<%=userid.getId()%>"/>
   <p>&nbsp;用户名：<input type="text" name="name"  value="<%=userid.getUsername()%>"></p>
   <p>密码：<input type="text" value="<%=userid.getEmail()%>"name="pwd"></p>
   <p><input type="submit" value="修改" name="button1"></p>
   <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></form>
          
         
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
