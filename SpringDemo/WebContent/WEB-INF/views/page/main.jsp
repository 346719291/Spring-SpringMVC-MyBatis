<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="jpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>主界面</title>
</head>
<frameset rows="110,*,8" frameborder="no" border="0" framespacing="0">
  <frame src="${jpath}/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frame src="${jpath}/center" name="mainFrame" id="mainFrame" />
  <frame src="${jpath}/down" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />
</frameset>
<noframes>
<body>
</body>
</noframes>
	
</html>
