<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>�ҵġ����ݡ�</title>
<link rel="stylesheet" href="css/index.css" />
</head>

<body>
<img src="img/bgImg.jpg" class="bgImg" />
<div class="content">
	<div class="bidTitle">����Ա��¼</div>
	<div class="logCon">
	<form action="servlet/login">
		<div class="line"><span>�˺�:</span>
		<input class="bt_input" name="name" type="text" /></div>
		<div class="line"><span>����:</span>
		<input class="bt_input" name="pwd" type="text" /></div>
		<button type="submit" class="logingBut">��¼</button>
		</form>
	</div>
</div>
<div style="text-align:center;">
<p>����ģ�壺<a href="http://www.mycodes.net/" target="_blank">Դ��֮��</a></p>
</div>
</body>

</html>