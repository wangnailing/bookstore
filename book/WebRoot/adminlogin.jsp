<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>我的“书屋”</title>
<link rel="stylesheet" href="css/index.css" />
</head>

<body>
<img src="img/bgImg.jpg" class="bgImg" />
<div class="content">
	<div class="bidTitle">管理员登录</div>
	<div class="logCon">
	<form action="servlet/login">
		<div class="line"><span>账号:</span>
		<input class="bt_input" name="name" type="text" /></div>
		<div class="line"><span>密码:</span>
		<input class="bt_input" name="pwd" type="text" /></div>
		<button type="submit" class="logingBut">登录</button>
		</form>
	</div>
</div>
<div style="text-align:center;">
<p>更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>

</html>