<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="jpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
-->
</style></head>

<body>
	<table width="100%" height="100px" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
		  <tr>
			     <td >
			    	<iframe name="I2" height="1000px;"  width="100%" border="0" frameborder="0" src="${jpath}/middel">浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
			    </td>
			    <td width="6" bgcolor="#1873aa" style=" width:6px;">&nbsp;</td>
		  </tr>
	</table>
</body>
</html>
