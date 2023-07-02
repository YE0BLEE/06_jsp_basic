<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp :: elements</title>
</head>
<body>
	<h2>1. getHeaderNames()</h2>
	<% 
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String headerName = headers.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
			<%= headerName %> = <%= headerValue %> <br>
	<%
		}
	%>
</body>
</html>
