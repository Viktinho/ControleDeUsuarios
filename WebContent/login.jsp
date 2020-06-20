<%@page import="br.com.exemplo.beans.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

</style>
<script>
if 
</script>
<style>
fieldset {
  background-color: #eeeeee;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página - Login</title>
</head>
<body>
	<fieldset>
		<h1>Login de Usuário</h1>
		<form action="autenticador" method="post">
		<br>
			<label>Email:</label> 
			<input type="text"  name="email" id="login" required><br>
			<label>Senha:</label> 
			<input type="password" name="senha" id="senha" required><br><br>
			<input type="submit" value="Logar"><br>
			
<!-- 			<div class="alert"> -->
<!-- 				<span class="closebtn" -->
<!-- 					onclick="this.parentElement.style.display='none';">&times;</span> -->
<!-- 				This is an alert box. -->
<!-- 			</div> -->

		</form>
	</fieldset>
</body>
</html>