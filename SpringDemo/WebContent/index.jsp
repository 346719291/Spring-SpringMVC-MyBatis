<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:forward page="/indexpage" />
<form action="${pageContext.request.contextPath}/Login">
	姓名：<input type="text" name="username"><br/>
	密码：<input type="password" name="password"><br/>
	<input type="submit" value="登录">
	</form>
	<h3>注册</h3>
	<form action="${pageContext.request.contextPath}/adduser">
	登录名：<input type="text" name="loginname"><br/>
	姓名：<input type="text" name="username"><br/>
	密码：<input type="password" name="password"><br/>
	<!-- 注册时间：<input type="datetime-local" name="createdate"><br/>  -->
	身份（1/0）：<select name="status" style="width:50px">
				<option value="0">0</option>
				<option value="1">1</option>
				</select><br/>
	<input type="submit" value="注册">
	</form>
	<h3>查询</h3>
	<form action="${pageContext.request.contextPath}/find">
	登录名：<input type="text" name="loginname"><br/>
	姓名：<input type="text" name="username"><br/>
	密码：<input type="password" name="password"><br/>
	<input type="submit" value="查找">
	</form>
	<h3>删除</h3>
	<form action="${pageContext.request.contextPath}/deleteuser">
	输入要删除的名字：<input type="text" name="username" value=""><br/>
	<input type="submit" value="删除">
	</form>
	<h3>修改</h3>
	<form action="${pageContext.request.contextPath}/updateUser">
	姓名：<input type="text" name="username"><br/>
	密码：<input type="password" name="password"><br/>
	<input type="submit" value="修改">
	</form>
</body>
</html>