<!DOCTYPE html>
<%@page import="view.ViewLogin"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body{
		margin: 0;
	}

	.flex-container{
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}
	.Login-form div{
		padding: 0.2em;
		text-align: center;
	}
	
	.Login-form div label{
		width: 30%;
		display: inline-block;
	}
	.Login-form div input[type=text]{
		/*width: 60%;*/
		border: none;
		border-bottom: 1px solid gray;
	}
	.Login-form div input:focus{
		outline: none;
		border-bottom: 2px solid red;
	}
	
	@media all and (max-width: 500px){
		.flex-container{
			flex-direction: column;
		}
	}
	
</style>
</head>
<body>

	<c:set value="${pageContext.request.contextPath}" var="contextPath"></c:set>
	
	<c:url var="loginURL" value="../${contextPath}/LoginServlet"/>

	<div class="flex-container">
		<div class="Login-form">
			<form method="post" action="<c:out value="${loginURL}"/>">
				<div>
					<label>Username:</label> 
					<input id="username" name="username" type="text" />
				</div>
				
				<div>
					<label>Password:</label> 
					<input id="password" name="password" type="password" /> 
					<input type="submit" value="Login" />
				</div>
				<c:out value="${errorMessage}"></c:out>
				
			</form>
		</div>
	</div>
</body>
</html>