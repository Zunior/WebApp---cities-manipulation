<!DOCTYPE html>
<%@page import="view.ViewLogin"%>
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

	<%
// 		ViewLogin viewLogin;
// 		if(session.getAttribute("viewLogin")!=null) 
// 			viewLogin = (ViewLogin)session.getAttribute("viewLogin");
// 		else 
// 			viewLogin = new ViewLogin("", "", "Upisite trazene podatke");

		String errorMessage = (String)request.getAttribute("errorMessage");
		if(errorMessage == null)
			errorMessage = "";
	%>


	<div class="flex-container">
		<div class="Login-form">
			<form method="post" action="../WebAplikacija/LoginServlet">
				<div>
					<label>Username:</label> 
					<input id="username" name="username" type="text" />
				</div>
				
				<div>
					<label>Password:</label> 
					<input id="password" name="password" type="password" /> 
					<input type="submit" value="Login" />
				</div>
				<%=errorMessage %>
			</form>
		</div>
	</div>
</body>
</html>