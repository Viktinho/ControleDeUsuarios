<%@page import="br.com.exemplo.beans.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar</title>
</head>
<script>
function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}
</script>
<body>
<jsp:include page="cabecalho.jsp"></jsp:include>
	<%
		Usuario usu = (Usuario)request.getAttribute("usuario");
	%>
<form action="UsuarioControllador" method="post">
		<input type="hidden" name="acao" value="salvar">
		<h1> Alterar usuário</h1>
		
		<label>ID:</label> 
		<input size="5" type="text" name="id" value="<%=usu.getId()%>" required>
		<label>Nome:</label> 
		<input type="text" name="nome" value="<%=usu.getNome()%>" required>
		<label>Email:</label> 
		<input type="text" name="email" value="<%=usu.getEmail()%>" required>
		<label>Senha:</label> 
		<input type="password" name="senha" value="<%=usu.getSenha()%>" required> <BR>
		<br>
		
		<input type="submit" value="SALVAR">
	</form>

</body>
</html>