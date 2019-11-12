<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="jpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="${jpath}/static/image_tab/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${jpath}/static/image_tab/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="${jpath}/static/image_tab/images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[管理员管理]-[修改管理员]</td>
              </tr>
            </table></td>

          </tr>
        </table></td>
        <td width="16"><img src="${jpath}/static/image_tab/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>	
  </tr>
</table>
<div>
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