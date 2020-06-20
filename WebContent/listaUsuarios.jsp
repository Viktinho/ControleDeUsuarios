<%@page import="java.util.List"%>
<%@page import="br.com.exemplo.beans.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Usuários</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp"></jsp:include>
</body>
<%
	//List<Usuario> lista = usuDAO.buscarTodos(usu);
List<Usuario> listaResultado = (List<Usuario>) request.getAttribute("lista");
%>
<h1>Lista de Usuários</h1>
<table border="1">
	<tr bgcolor="#eaeaea">
		<th>ID</th>
		<th>Nome</th>
		<th>Email</th>
		<th>Senha</th>
		<th>Excluir</th>
		<th>Alterar</th>
	</tr>
	<%
		for (Usuario u : listaResultado) {
	%>
	<tr>
		<th><%=u.getId()%></th>
		<th><%=u.getNome()%></th>
		<th><%=u.getEmail()%></th>
		<th><%=u.getSenha()%></th>
		<th><a href="UsuarioControllador?acao=ex&id=<%=u.getId()%>">Excluir</a>
		<th><a href="UsuarioControllador?acao=alt&id=<%=u.getId()%>">Alterar</a>
	</tr>
	<%
		}
	%>
	

</table>


</html>