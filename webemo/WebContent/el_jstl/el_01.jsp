<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주석처리</h3>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<%--el(EXPRESSION LANGUAGE) : 표현언어 jsp스크립트를 대신해서 속성값을 편리하게 사용하는 언어 ${}--%>
	 <%
	 	//scope(영역) - 데이터를 참조가능하는 공간을 제공
	 	//page- pagecontext, request-request, session-sessuon, application-application
	 	//page열역에 p1이름으로 page값이 저장됨
	 	pageContext.setAttribute("p1", "page"); //한페이지
	 	//request 영역에 p2이름으로 저장
	 	request.setAttribute("p2", "request");
	 	//session 영역에 p3이름으로 저장
	 	session.setAttribute("p3", "session");
	 	//application 영역에 p4이름으로 저장
	 	application.setAttribute("p4", "application");
	 %>
	 <p>
	 	<%= pageContext.getAttribute("p1") %> / <%= request.getAttribute("p2") %>/
	 	<%= session.getAttribute("p3") %> / <%= application.getAttribute("p4") %>
	 </p>
	 
	 <p>${p3}</p>
	 <p>${pageScope.p1}/${requestScope.p2}/${sessionScope.p3}/${applicationScope.p4}/ </p>
	 <!-- 속성값을 가져올때 영역을 명시하지 않으면 page-> requset-> session-> application순으로 가져온다. -->
	 
</body>
</html>