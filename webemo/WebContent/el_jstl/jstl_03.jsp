<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int avg = 85;

	if (avg >= 90)
		out.print("a");
	else if (avg >= 80)
		out.print("b");
	else if (avg >= 80)
		out.print("c");
	else if (avg >= 80)
		out.print("d");
	else
		out.print("f");
	%>

	<c:set var="avg" value="85"></c:set>
	<c:choose>
		<c:when test="${avg>=90}">
			<p>
				<c:out value="a"></c:out>
		</c:when>
		<c:when test="${avg>=80}">
			<p>
				<c:out value="b"></c:out>
		</c:when>
		<c:when test="${avg>=70}">
			<p>
				<c:out value="c"></c:out>
		</c:when>
		<c:otherwise>
			<p><c:out value="f"></c:out> </p>
		</c:otherwise>
	</c:choose>

</body>
</html>