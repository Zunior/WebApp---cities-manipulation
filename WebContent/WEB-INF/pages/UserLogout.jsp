<%@page import="domain.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<c:set value="${pageContext.request.contextPath}" var="contextPath"></c:set>
	<c:url var="loginURL" value="../${contextPath}/LoginServlet" />

	<div>Login user: <c:out value="${currentUser.getName()}" /></div>
	<div>
		<a href="<c:out value="${loginURL}" />">Logout</a>
	</div>
	<div>
		<a href="Home.jsp">back</a>
	</div>
	<div id="linija">====================================</div>

</body>
</html>