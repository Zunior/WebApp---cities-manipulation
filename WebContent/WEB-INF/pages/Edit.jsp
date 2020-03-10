<%@page import="domain.City"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	
	<% ArrayList<City> cities = (ArrayList<City>)request.getServletContext().getAttribute("cities"); 
		if(cities == null) 
			cities = new ArrayList<City>();
	%>
	
<%-- 	<jsp:useBean id="currentUser" class = "domain.User" scope="session"> --%>
<%-- 		<jsp:setProperty name="currentUser" property="name"></jsp:setProperty> --%>
<%-- 	</jsp:useBean> --%>
	
	<div class="flex-container">
		<div class="Login-form">
			<jsp:include page="UserLogout.jsp"></jsp:include>
				<div>
					<table>
						<thead>
						    <tr>
								<th>Broj grada</th>  
								<th>Ime grada</th>
								<th>Edit</th>
						    </tr>
						</thead>
							<tbody>
								<%
									for (City city: cities){
								%>
								<tr>
									<form method="get" action="../WebAplikacija/HomeServlet">
										<td><input type = "text" id="brojGrada" name = "brojGrada" value = "<%=city.getCityNumber() %>" /></td>
										<td><input type = "text" id="imeGrada" name = "imeGrada" value = "<%=city.getNaziv() %>" /></td>
										<td>
											<input type = "submit" id="operacija" name = "operacija" value="update"/>
										</td>
									</form>
								</tr>
								<% } %>
							</tbody>
					</table>
				</div>
		</div>
	</div>
	

</body>
</html>