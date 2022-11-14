<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title url</title>
</head>
<body>
	<c:url var="user" value="jstl_13_13.jsp">
		<c:param name="num" value="10"/>
		<c:param name="data" value="20"/>
	</c:url>
	
	<a href="${user}">jstl</a>
</body>
</html>