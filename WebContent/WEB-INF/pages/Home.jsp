<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home odabir</title>
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
	
/*  	.Login-form div:nth-child(7), div:nth-child(8){  */
/*  		float: left;  */
/*  	}  */
		
	@media all and (max-width: 500px){
		.flex-container{
			flex-direction: column;
		}
	}
	
</style>
</head>
<body>
	

	<jsp:useBean id="currentUser" class = "domain.User" scope="session">
		<jsp:setProperty name="currentUser" property="name"></jsp:setProperty>
	</jsp:useBean>
	
	<div class="flex-container">
		<div class="Login-form">
			<jsp:include page="UserLogout.jsp"></jsp:include>
				<div>
					<a href="../WebAplikacija/HomeServlet?operacija=izlistaj">All cities</a>
				</div>
				<br />
				<div>
					<a href="../WebAplikacija/HomeServlet?operacija=upisi">New city</a> 
				</div>
		</div>
	</div>


</body>
</html>