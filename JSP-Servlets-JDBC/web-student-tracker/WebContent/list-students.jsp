<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*, com.san.web.jdbc.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Tracker App</title>
		<link type="text/css" rel="stylesheet" href="css/style.css">
	</head>
	<%
			// get the students from the request object(sent by servlet)
			List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
	%>
	<body>
		<div id ="wrapper">
			<div id="header">
				<h2>FooBar University</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
		
		
					<% for(Student tmepStudent:theStudents){%>
					<tr>
						<td><%=tmepStudent.getFirstName() %></td>
						<td><%=tmepStudent.getLastName() %></td>
						<td><%=tmepStudent.getEmail() %></td>
					</tr>
					
					<%} %>
				</table>
			
			</div>
		</div>
	</body>
</html>