<%@page import="com.lec.cookie.MyCookie"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MyCookie cookies = new MyCookie(request);
%>
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
	<div class="container">
		<h3>STATUS Logged In or Not</h3>
		<%
			if(cookies.exists("ADMIN")) {
		%>
				<h4 class="bg-danger text-white"> ID <%= cookies.getValue("ADMIN") %> STATUS : Now Logged In </h4>
		<%
			} else {
		%>
				<h4> STATUS : Not Logged In</h4>
		<%
			}
		%>
	</div>
</body>
</html>