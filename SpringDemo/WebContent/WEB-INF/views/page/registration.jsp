<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<body style="background-color: #016aa9;">
<h1>管理员增加页面</h1>
<hr>
<div style="background-color:#D0D0D0;color:blue;">
	<form action="${pageContext.request.contextPath}/registration">
	<br/>
	姓&nbsp;&nbsp;&nbsp;名：<input type="text" name="username"><br/><br/>
	登录名：<input type="text" name="loginname" id="loginname"><span id="sp1"></span><br/><br/>
	密&nbsp;&nbsp;&nbsp;码：<input type="password"  id="password" name="password">
		<input type="button" id="display" value="显示密码"><br/><br/>
	身份（1/0）：<select name="status" style="width:50px">
				<option value="0">0</option>
				<option value="1">1</option>
				</select><br/><br/>
	<input type="submit" style="width:80px;height:30px;" value="注册">
	</form>
	</div>
</body>
<script type="text/javascript">
$(function(){
	$("#loginname").blur(function(){
		var json={
			loginname:$("#loginname").val()
		};
		$("#sp1").load("${pageContext.request.contextPath}/findname",json,function(data,text,XMLHTTPRequest){
			console.log(data);
			console.log(text);
			console.log(XMLHTTPRequest);
		})
	});
})
$(function(){
	$("#display").mousedown(function(){
		$("#password").attr("type", "text");
		$("#display").attr("value","隐藏密码");
	});
	$("#display").mouseup(function(){
		$("#password").attr("type", "password");
		$("#display").attr("value","显示密码");
	});
});
</script>
</html>