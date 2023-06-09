<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<%@include file="jsp01_menu.jsp" %>
	
	<%! String greeting = "환영합니다! 저희 쇼핑몰을 방문해 주셔서 감사합니다!!"; %>
	
	<div class="jumbotron bg-info">
		<div class="container">
			<h4 class="display-3"><%= greeting %></h4>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h5><%= greeting %></h5>
			<%
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour/12 == 0) { am_pm = "AM"; } else { am_pm = "pm"; hour -= 12; }
				String CT = hour +":" + minute + ":" + second;
				out.println("현재접속시간 = " + CT + "\n");
			%>
		</div>
	</div>
	
	<%@include file="jsp01_footer.jsp" %>
</body>
</html>