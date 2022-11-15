<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자</title>
</head>
<body>
	<%--숫자형식을 지정하는 formatnumber요소 --%>>
	<c:set var="num1" value="10000"/>
	<c:set var="num2" value="0.2"/>
	
	<!-- type속성은 numbrer, currenct, -->
	
	<p><fmt:formatNumber value="${num1}" type="number"/></p>
	
	<p><fmt:formatNumber value="${num1}" type="currency"/></p>
	
	<p><fmt:formatNumber value="${num1}" type="percent"/></p>	

	<p><fmt:formatNumber value="${num1 }" currencySymbol="$" type="currency"/></p>
</body>
</html>