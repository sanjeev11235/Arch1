<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- step1: create html form -->
	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem">
		<input type="submit" value="Submit">
	</form>
	<br>
	<!-- 
	Item entered: <%= request.getParameter("theItem") %>
	 -->
<!-- step2: Add new item to "to do" list -->
	
	<%
		//get the TO DO items from session		
		List <String> items= (List<String>) session.getAttribute("myToDoList");
	
		//if TO DO items doesn't exist, then create a new one
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		
		//see if there is form data to add
		String theItem= request.getParameter("theItem");
		if(theItem != null){
			items.add(theItem);
		}
	
	%>

<!-- step3 Display all "To DO" item from session -->
	<hr>
	<b>To List Items:</b>
	<ol>
		<%
			for(String temp:items){
				out.println("<li>"+ temp+ "</li>");
			}
		%>
	</ol>






























</body>
</html>