<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<!-- 단순if -->
	<h1>스크립트릿</h1>
	<%	
		if(true) {
			%>
			<h2>${"TRUE"}</h2>
	<%
		}
	%>
	<hr />
	
	<h1>JSTL</h1>
	<c:if test="true">
		<h2>${"TRUE"}</h2>
	</c:if>
	<hr />
	<!-- http://localhost:8088/jsp01_basic/jsp11_jstl/jsp02_if.jsp?name=hong&age=20&addr=kor -->
	<%= request.getParameter("name") %> <br />
	<c:if test= "${ param.name == 'hong'}">
		HELLO, NICE TO MEET YOU! <br />
		MY NAME IS HONG. <br />
	</c:if>
	<br />
	<c:if test= "${ param.age > 18}">
		MY AGE IS <%= request.getParameter("age") %>.  <br />
		MY AGE IS ${ param.age }. 
	<br />
	</c:if>
	NATIONALITY : ${ param.addr }.
	
	
</body>
</html>









