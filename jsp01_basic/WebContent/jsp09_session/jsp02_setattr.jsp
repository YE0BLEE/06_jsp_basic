<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<h4>session 정보 저장</h4>
	<%
		session.setAttribute("id", "sonny");
		session.setAttribute("pw", "12345");
		session.setAttribute("name", "손흥민");
	%>
	
	<h4>session id : <%= session.getId() %></h4>
	<h4>ID : <%= session.getAttribute("id") %></h4>
	<h4>PW : <%= session.getAttribute("pw") %></h4>
	<h4>NAME : <%= session.getAttribute("name") %></h4>
</body>
</html>