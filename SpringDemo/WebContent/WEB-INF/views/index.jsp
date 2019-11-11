<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="jpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>企业信息管理系统_用户登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style></head>

<body>
<form action="${jpath}/login" method="post">
	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="235" background="${jpath}/static/images/login_03_副本.jpg">&nbsp;</td>
      </tr>
      <tr>
        <td height="53"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="394" height="53" background="${jpath}/static/images/login_05.gif">&nbsp;</td>
            <td width="206" background="${jpath}/static/images/login_06.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="16%" height="25"><div align="right"><span class="STYLE1">用户</span></div></td>
                <td width="57%" height="25"><div align="center">
                  <input type="text" name="loginname" class="loginname" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td width="27%" height="25">&nbsp;</td>
              </tr>
              <tr>
                <td height="25"><div align="right"><span class="STYLE1">密码</span></div></td>
                <td height="25"><div align="center">
                  <input type="password" name="password" class="password" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <!-- </tr>
                <tr> -->
                <td height="25">
	                <div align="left" >
	                	<a>
	                		<%--<img src="${jpath}/static/images/dl.gif" width="49" height="18" border="0"> --%>
	                		<input type="submit" value="登陆" width="49" height="18">
	                		
	                	</a>
	                </div>
	             </td>
              </tr>
            </table></td>
            <td width="362" background="${jpath}/static/images/login_07.gif">&nbsp;
            			<a href="${jpath}/registration_jsp">
	                	注册
	                	</a>
            </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="213" background="${jpath}/static/images/login_08.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>

