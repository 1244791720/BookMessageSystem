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
<title>信息管理系统-桌面</title>
<link href="<%=basePath%>css/desk.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table align=center width="90%" border="0" cellspacing="0"
		cellpadding="0" height="100%">
		<tr>
			<td valign="top"><font color="#336666"></font>
			 <font color='red'>
			 	<br />
				<br /> 欢迎使用本系统 系统开发环境:Eclipse + Tomcat7.0 + mysql5.6 <br />
				<br /> 系统采用技术: SpringMVC + Spring + Mybatis (SSM)<br />
				<br /> </font><font color=blue>本系统开发时间: 2018年7月17日
			</font>
			</td>
		</tr>
	</table>
</body>
</html>