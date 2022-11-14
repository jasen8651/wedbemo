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
	<P>BEFOR</P>
	<c:import url="jstl_12_top.jsp">
		<c:param name="data" value="10"></c:param>
	</c:import>
	<p>befor</p>
</body>
</html>