<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 커스텀 태그 : jsp에서 사룔가능하도록 정의태그를 의미한다.jstl은 jsp페이지메서 많이사용되는 논리적인 판단, 반복문처리, 데이터베이스등의 처리를 위한 표준 커스텀 태그이다. -->
	<%
		int data = 10;
	
	%>
	<c:set  var="data" value="10"/>
		<p>${data}</p>
	<p><c:out value="${data }"></c:out> </p>
	<c:remove var="data"/>
	<p>${data}</p>
</body>
</html>