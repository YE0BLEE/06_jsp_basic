<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8"); 
	
	String id = request.getParameter("id");
	
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:mariadb://localhost:3306/jspstudy";
	String usr = "root";
	String pwd = "12345";
	String sql = "delete member from member where id=?";
	
	int deleteCount = 0;
	boolean isDelete = true;
	
	try {
		conn = DriverManager.getConnection(url, usr, pwd);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		deleteCount = pstmt.executeUpdate();
		} catch(Exception e) {
			isDelete = false;
			out.println("<h3 class='bg-danger text-white'>DB connection failed</h3> <br />"
					+ e.getMessage());
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				// dummy
			}
		}
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h1>Member Deletion Result</h1>
		<%= request.getParameter("id") %><br>
		<hr />
		<%
			if(deleteCount > 0) {
		%>
				<h3 class="bg-info text-white"><%= id %> Member Deletion Success</h3>
		<%
			} else {
		%>
				<h3 class="bg-info text-white"><%= id %> Member Deletion Failed</h3>
		<%
			}
		%>
		<a href="jsp05_listMember.jsp" class="btn btn-primary">Member List</a>
	</div>
</body>
</html>