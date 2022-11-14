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
		int[]  num = new int[] {10,20,30,40,50};
		for(int i=0; i<num.length; i++)
			out.print("<p>"+ num[i] + "</p>");
	%>
</body>
</html>