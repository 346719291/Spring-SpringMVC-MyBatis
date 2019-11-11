<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<div style="background-color:#D0D0D0;color:blue;">
<form action="${pageContext.request.contextPath}/updateUser">
<br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;id:  <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly="readonly"><br/><br/>
	姓名：<input type="text" name="username" value="<%=request.getParameter("username") %>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	登录名：<input type="text" name="loginname" id="loginname" value="<%=request.getParameter("loginname") %>"><span id="sp1"></span><br/><br/>
	密码：<input type="password" name="password" id="password" value="<%=request.getParameter("password") %>">
		<input type="button" id="display" value="显示密码"><br/><br/>
	身份（1/0）：<select name="status" style="width:50px">
				<option value="<%=request.getParameter("status") %>"><%=request.getParameter("status") %></option>
				<option value="0">0</option>
				<option value="1">1</option>
				</select><br/><br/>
	<input type="submit" value="修改"  style="width:80px;height:30px;"> <!-- onclick="yanzheng()" -->
</form>
</div>
</body>
<script>
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
$(function(){
	$("#loginname").blur(function(){
		var json={
			loginname:$("#loginname").val()
		};
		$("#sp1").load("/SpringDemo/findname",json,function(data,text,XMLHTTPRequest){
			console.log(data);
			console.log(text);
			console.log(XMLHTTPRequest);
		})
	});
})
function yanzheng(){	
	var username = /^[\u4E00-\u9FA5]{1,6}$/;
	var loginname = /^[\u4E00-\u9FA5]{1,6}$/;
	var a=$(".username").val();
	var b=$(".loginname").val();
	if(!name.test(a)||!name.test(b)){
		alert("不能输入数字");
	}
	 else{
		var username=$(".username").val();
		var loginname=$(".loginname").val();
		var password=$(".password").val();
		var display=$(".display").val();
		var status=$(".status").val();
	 	var parem={
	 			username:username,
	 			loginname:loginname,
	 			password:password,
	 			display:display,
	 			status:status
	 	}
	 	alert("修改成功");
		$.post("${pageContext.request.contextPath}/updateUser",parem);
		} 
}
</script>
</html>