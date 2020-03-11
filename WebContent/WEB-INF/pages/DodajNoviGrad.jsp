<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="res/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> -->
<link rel="stylesheet" type="text/css" href="res/css/Main.css" />
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
		width: 100%;
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
	
	button{
		border-radius: 50%;
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
	<c:url var="dodajURL" value="../${contextPath}/HomeServlet"/>

	<div class="flex-container">
		<div class="Login-form">
			<form method="post" action="<c:out value="${dodajURL}"/>">
				<div>
					<jsp:include page="UserLogout.jsp"></jsp:include>
				</div>
				<br />
				<div id="addProduct">
					<button disabled><h1 id="naslov">ADD CITY</h1></button>
				</div>
				<br />
				<div>
					<label for="name">Name:</label> 
					<input id="name" type="text" name="name"/>
				</div>
				<br />
				<div>
					<label for="cityNumber">City number:</label> 
					<input id="cityNumber" name="cityNumber"></input>
				</div>
				<c:out value="${errorMessage} }" />
				<br />
				<div>
					<button type="submit" value="Add" class="btn btn-primary" >Add</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>