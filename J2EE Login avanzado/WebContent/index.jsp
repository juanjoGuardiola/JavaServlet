<%@page import="edu.ucam.pojos.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DAD2</title>
</head>
<body>


<%

	Usuario usuario = (Usuario)request.getSession().getAttribute("USER");

	if (usuario != null){
		out.println("Bienvenido " + usuario.getNombre());
%>

		<br><a href="<%= request.getContextPath()%>/ServletLogout">Salir</a>
<%
		
		
	}else{
		
		String msgError = (String)request.getAttribute("MSG_ERROR");
		if (msgError != null){
			out.println("<i>"+msgError+"</i><br>");
		}
		
		
		
		//Formulario de login
%>
		<form action="<%= request.getContextPath()%>/ServletLogin" method="POST">
		
			Nombre:<input type="text" name="PARAM_NOMBRE"><br>
			Clave:<input type="text" name="PARAM_CLAVE"><br>
			<input type="submit">
		</form>

<%
	}
%>

</body>
</html>