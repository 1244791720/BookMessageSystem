<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理系统-首页</title>
<link href="<%=basePath%>css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="container">
		<div id="banner">
			<img src="<%=basePath%>images/logo.gif">
		</div>
		<div id="globallink">
			<ul>
				<li><a href="<%=basePath%>index.jsp">首页</a></li>
				<li><a href="<%=basePath%>BookType/frontlist"
					target="OfficeMain">图书类型</a></li>
				<li><a href="<%=basePath%>Book/frontlist" target="OfficeMain">图书</a></li>
			</ul>
			<br />
		</div>
		<div id="main">
			<iframe id="frame1" src="<%=basePath%>desk.jsp" name="OfficeMain"
					width="100%" height="100%" scrolling="yes" marginwidth=0
					marginheight=0 frameborder=0 vspace=0 hspace=0> 
			</iframe>
		</div>
		<div id="footer">
		<p>腾里设计 &copy;版权所有 <a href="http://www.baidu.com" target="_blank">腾里出品</a>&nbsp;&nbsp;<a href="<%=basePath%>login.jsp"><font color=red>后台登陆</font></a></p>
	</div>
	</div>
</body>
</html>