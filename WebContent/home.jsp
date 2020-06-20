<%@page import="br.com.exemplo.beans.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página Inicial</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp"></jsp:include>
	<h1>Curso Java Web!</h1>
	<h2>Seus dados:</h2>
	
	<%Usuario usuAutenticado = (Usuario) session.getAttribute("usuAutenticado");
	out.print("Sejá bem vindo, " + usuAutenticado.getNome() +"!");
	%><br>
	
	<%out.print("Seu E-mail é: " + usuAutenticado.getEmail());
	%><br>
	
	<%out.print("Seu id é: " + usuAutenticado.getId());
	%>


</body>
</html>