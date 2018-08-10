<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.shuangyulin.po.Book"%>
<%@ page import="com.shuangyulin.po.BookType"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//获取所有的bookType信息
	List<BookType> bookTypeList = (List<BookType>) request.getAttribute("bookTypeList");
	Book book = (Book) request.getAttribute("book");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看图书</title>

<STYLE type=text/css>
body {
	margin: 0px;
	font-size: 12px;
	background-image: url(<%=basePath%>images/bg.jpg);
	background-position: bottom;
	background-repeat: repeat-x;
	background-color: #A2D5F0;
}

.STYLE1 {
	color: #ECE9D8
}

.label {
	font-style .: italic;
}

.errorLabel {
	font-style .: italic;
	color: red;
}

.errorMessage {
	font-weight: bold;
	color: red;
}
</STYLE>
<script src="<%=basePath%>calendar.js"></script>
</head>

<body>
	<br />
	<br />
	<s:fielderror cssStyle="color:red" />
	<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0
		width="80%" border=0>
		<TBODY>
			<TR>
				<TD align="left" vAlign=top><s:form action="" method="post"
						onsubmit="return checkForm();" enctype="multipart/form-data"
						name="form1">
						<table width='100%' cellspacing='1' cellpadding='3'
							class="tablewidth">
							<tr>
								<td width=30%>图书条形码:</td>
								<td width=70%><%=book.getBarcode()%></td>
							</tr>

							<tr>
								<td width=30%>图书名称:</td>
								<td width=70%><%=book.getBookName()%></td>
							</tr>

							<tr>
								<td width=30%>图书所在类别:</td>
								<td width=70%><select name="book.bookType.bookTypeId"
									disabled>
										<%
											for (BookType bookType : bookTypeList) {
													String selected = "";
													if (bookType.getBookTypeId() == book.getBookType().getBookTypeId())
														selected = "selected";
										%>
										<option value='<%=bookType.getBookTypeId()%>' <%=selected%>><%=bookType.getBookTypeName()%></option>
										<%
											}
										%>
								</td>
							</tr>

							<tr>
								<td width=30%>图书价格:</td>
								<td width=70%><%=book.getPrice()%></td>
							</tr>

							<tr>
								<td width=30%>库存:</td>
								<td width=70%><%=book.getCount()%></td>
							</tr>

							<tr>
								<td width=30%>出版社:</td>
								<td width=70%><%=book.getPublish()%></td>
							</tr>

							<tr>
								<td width=30%>图书图片:</td>
								<td width=70%><img
									src="<%=basePath%><%=book.getPhotoBook()%>" width="200px"
									border="0px" /></td>
							</tr>
							<tr>
								<td colspan="4" align="center"><input type="button"
									value="返回" onclick="history.back();" /></td>
							</tr>
						</table>
					</s:form></TD>
			</TR>
		</TBODY>
	</TABLE>
</body>

</html>