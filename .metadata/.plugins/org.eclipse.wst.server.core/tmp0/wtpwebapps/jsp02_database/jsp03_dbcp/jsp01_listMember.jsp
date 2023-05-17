<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
	커넥션풀: Connection Pool
	
	커넥션풀, 데이터베이스와 커넥션을 사전에 만들어 pool에 저장해 두고
	필요할 때 마다 꺼내서 사용한 후 다시 pool에 반환하는 기법을 말한다.
	
	커넥션풀의 특징은
	
	1. 사전에 풀에 Connection이 생성되어 있기 때문에 커넥션을 생성하는 데 필요한 시간을 줄일 수 있다.
	2. Connection을 재사용하기 때문에 생성되는 Connection갯수를 일정하게 관리할 수 있다.
	3. Connection Pool을 사용하게 되면 웹애플리케이션의 성능과 처리성능이 향상된다.
	   때문에 대부분의 웹애플리케이션이 커넥션풀을 기본적으로 사용하고 있다.
	   
	커넥션풀을 사용하는 방법
	
	1. DBCP 관련 jar파일과 JDBC 관련 jar파일을 설치
	  a. Commons DBCP API (commons-dbcp2-2.9.0.jar, common-pool2-2.11.1.jar, commons-logging-1.2.jar)
	     maven repository에서 다운
	  b. WEB-INF/lib에 복사 (자동으로 add build path)
	  
	2. Connection Pool을 초기화
	  a. DB Initial 클래스 작성 (DBCPInit.java 서블릿프로그램)
	  b. web.xml에 Connection Pool 관련 태그 설정 (myPoolName)
	  
	3. Connection Pool에서 Connection을 사용
	  a. jdbc:apache:commons:dbcp:커넥션이름
	  b. 커넥션이름 = myPoolName
-->
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
		<h1>Member Registration</h1>
		<div class="row">
			<table class="table table-bordered table-dark table-hover">
				<tr>
					<th>ID</th>
					<th>PW</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>DELETE</th>
				</tr>
				<%
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				
				String drv = "jdbc:apache:commons:dbcp:myPoolName";
				String sql = "select * from member order by id desc";
				
				try {
					conn = DriverManager.getConnection(drv);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						String id = rs.getString("id");
						String pw = rs.getString("password");
						String name = rs.getString("name");
						String email = rs.getString("email");	
				%>
					<tr>
						<td><a href="jsp02_updateForm.jsp?id=<%= id %>"><%= id %></a></td>
						<td><%= pw %></td>
						<td><%= name %></td>
						<td><%= email %></td>
						<td><a href="jsp04_deleteForm.jsp?id=<%= id %>" class="btn btn-danger">DELETE</a></td>
					</tr>
				
				<%
					}
					
				} catch(Exception e) {
					out.println("<h3 class='bg-danger text-white'>DB connection failed</h3> <br />"
							+ e.getMessage());
				} finally {
					try {
						if(rs != null) rs.close();
						if(stmt != null) stmt.close();
						if(conn != null) conn.close();
					} catch(Exception e) {
						// dummy
					}
				}
				
				%>
				
			</table>
			
		</div>
		<a href="/jsp02_database/jsp01_connect/jsp03_insertForm.jsp" class="btn btn-primary mt-sm-2">REGIST</a>
	</div>
</body>
</html>







