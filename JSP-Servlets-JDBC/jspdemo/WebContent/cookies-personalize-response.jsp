<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
		<%
		//read form data
		String favLang =request.getParameter("favoriteLanguage");
		//create the cookie
		Cookie theCookie= new Cookie("myApp.favoriteLanguage",favLang);
		//set the life span... total number of seconds
		theCookie.setMaxAge(60*60*24*365);
		//send cookie to browser
		response.addCookie(theCookie);	
	%>
<body>
	
	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	<br><br>
	<a href="cookies-homepage.jsp">Return to homepage</a>

</body>
</html>