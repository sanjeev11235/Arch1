<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation Title</title>
</head>
<body>
		
	The Student is confirmed: ${param.firstName} ${param.lastName}		
	<br><br>
	Favorite programming languages:<br/>
	<!-- display list of "favoriteLanguages" -->
	<ul>
		<%		
			String[] langs= request.getParameterValues("favoriteLanguage");
			
			for(String tempLang : langs){
				out.println("<li>" +tempLang +"</li>");
			}		
		%>		
	</ul>
	
</body>
</html>