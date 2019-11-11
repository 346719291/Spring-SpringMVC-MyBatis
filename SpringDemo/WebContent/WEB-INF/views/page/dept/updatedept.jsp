<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="background-color:#D0D0D0;color:blue;">
	<form action="${pageContext.request.contextPath}/updatedept">
	<br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;id:  <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly="readonly"><br/><br/>
	职位名：<input type="text" name="name" value="<%=request.getParameter("name") %>"><br/><br/> <!-- readonly="readonly" -->
	备&nbsp;&nbsp;&nbsp;注：<input type="text" name="remark" style="width:170px;height:50px" value="<%=request.getParameter("remark") %>"><br/><br/>
	<input type="submit" value="修改" style="width:80px;height:30px;">
	</form>	
	</div>
</body>
</html>