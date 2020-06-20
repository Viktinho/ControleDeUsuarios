<%@page
	import="com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.exemplo.jdbc.UsuarioDAO"%>
<%@page import="br.com.exemplo.beans.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página - Salvar Cadastro</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp"></jsp:include>
	<%
	String snome = request.getParameter("nome");
	String semail = request.getParameter("email");
	String ssenha = request.getParameter("senha");

	try {

		Usuario usuario = new Usuario();
		
		usuario.setNome(snome);
		usuario.setEmail(semail);
		usuario.setSenha(ssenha);

		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.cadastro(usuario);
	} catch (Exception e) {
		out.print("Erro de Data - " + e.getMessage());
	}
	%>

	<h1>Salvo com Sucesso!</h1>
	
	
</body>
</html>