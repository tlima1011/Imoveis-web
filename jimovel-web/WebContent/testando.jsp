<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Primeiro JSP</title>
</head>
<body>
	<%-- Comentário: Esse JSP foi criado durante o curso de JavaWEB. IgorDEV: http://igordev.com.br --%>
	<%
		String mensagem = "Olá, essa é uma mensagem direto do servidor!";
		out.println(mensagem);
	%>
	<br />
	<br />
	<%
		out.print("Exibindo a mensagem utilizando o atalho de saída:");
	%>
	<%=mensagem%>
	<%
	System.out.println("** Isso vai sair no console! **"); %>
</body>
</html>