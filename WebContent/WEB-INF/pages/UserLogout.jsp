<%@page import="domain.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	div{
		display: inline-block;
	}
	#linija{
		display: block;
	}
	
	div > a{
		align-content: flex-end;
	}
</style>
</head>
<body>
	<%
		User currentUser = (domain.User)session.getAttribute("currentUser");
	%>

	<div>Login user: <%=currentUser.getName() %></div>
	<div>
		<a href="../WebAplikacija/LoginServlet">Logout</a>
	</div>
	<div>
		<a href="Home.jsp">back</a>
	</div>
	<div id="linija">====================================</div>

</body>
</html>