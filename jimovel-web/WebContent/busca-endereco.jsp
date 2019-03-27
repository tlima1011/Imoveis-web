<%@ page import="java.util.*, br.com.igordev.dao.*, br.com.igordev.modelo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...:::Busca Endereço:::...</title>
<link type="text/css" href="resources/css/imovel.css" rel="stylesheet" /> 
<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>
	<h5>Código do Imóvel: ${param.codigo}</h5>
	<%
		Long codigo = new Long(request.getParameter("codigo"));
		Imovel imovel = new ImovelDao().busca(codigo);
		if (imovel != null) {
	%>
	<h4>
		Endre&ccedil;o do im&oacute;vel:
		<%=imovel.getEndereco()%></h4>
	<%
		} else {
	%>
	<h4>Im&oacute;vel n&atilde;o localizado!</h4>
	<%
		}
	%>
</body>
</html>