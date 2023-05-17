<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>Registered Information</h3>
	<table border="1">
	<tr>
	<td>ID</td>
	<td><%= request.getParameter("id") %></td>
	</tr>
	<tr>
	<td>PW</td>
	<td><%= request.getParameter("pw") %></td>
	</tr>
	<tr>
	<td>CONTACT</td>
	<td><%= request.getParameter("contact") %></td>
	</tr>
	<tr>
	<td>GENDER</td>
	<td><%= request.getParameter("gender") %></td>
	</tr>
	<tr>
	<td>HOBBY</td>
	<td>
	<%-- <%= request.getParameterValues("hobbies") %> --%>
	<%
		String[] hobbies = request.getParameterValues("hobbies");
		if(hobbies != null) {
			for(String hobby:hobbies) {
	%>
				<%= hobby %> <br>
	<%	
			}
		}
	%>
	</td>
	</tr>
	<tr>
	<td>COMMENT</td>
	<td><%= request.getParameter("comment") %></td>
	</tr>
	</table>

</body>
</html>