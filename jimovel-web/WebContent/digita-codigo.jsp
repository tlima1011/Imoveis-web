<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...Digita Código</title>
<link type="text/css" href="resources/css/imovel.css" rel="stylesheet" /> 
<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>
	<form action="busca-endereco.jsp" method="post">
		Digite o código do imóvel: <input type="text" name="codigo" /> <br />
		<br />
		<hr />
		<input type="submit" value="Buscar" />
	</form>
</body>
</html>