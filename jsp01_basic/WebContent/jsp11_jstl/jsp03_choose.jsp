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
	<!-- ?name=hong&age=20 -->
	<!-- c:when = if, c:otherwise = else -->
	<ul>
		<c:choose>
			<c:when test="${ param.name == 'hong' }">
				<li>user name is <b>${ param.name}.</b></li>
			</c:when>
			<!-- else if 불가 -->
			<c:when test="${ param.age > 18 }">
				<li>user age is <b>${ param.age}.</b></li>
			</c:when>
			<c:otherwise>
				<li>cannot found any information about user.</li>
			</c:otherwise>
		</c:choose>
	</ul>
	
</body>
</html>





