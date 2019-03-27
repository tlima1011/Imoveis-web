<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*, br.com.igordev.dao.*, br.com.igordev.modelo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...:::Lista de Imóveis:::...</title>
<link type="text/css" href="resources/css/imovel.css" rel="stylesheet" /> 
<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h3><a href="mvc?servico=MostraImovelServico">Cadastrar imovel</a></h3>
	<table cellspacing="2" width="70%">
		<thead align="left">
			<tr>
				<th>Prorietário:</th>
				<th>Endereço:</th>
				<th>Tipo:</th>
				<th>Contato:</th>
				<th>Valor:</th>
				<th>Data Inclusão:</th>
			</tr>
		</thead>
<%-- 		<jsp:useBean id="dao" class="br.com.igordev.dao.ImovelDao" /> --%>

		<c:forEach var="imovel" items="${imoveis}" varStatus="ln">
			<tr bgcolor="#${ln.count % 2 == 0 ? '9c9c9c' : 'ffffff'}">
				<td>${imovel.proprietario}</td>
				<td>${imovel.endereco}</td>
				<td>${imovel.tipo}</td>
				<c:if test="${imovel.contatoEhEmail}">
					<td><a href="mailto:${imovel.contato}">${imovel.contato}</a></td>
				</c:if>
				<c:if test="${not imovel.contatoEhEmail}">
					<td>${imovel.contato}</td>
				</c:if>
				<td><fmt:formatNumber value="${imovel.valor}" type="currency"/></td>
				<td><fmt:formatDate value="${imovel.dataInclusao.time}" pattern="dd/MM/yyyy" /></td>
				<td><a href="mvc?servico=RemoveImovelServico&id=${imovel.id}">Remover</a> </td>
				<td><a href="mvc?servico=MostraImovelServico&id=${imovel.id}">Alterar</a> </td>
			</tr>
		</c:forEach>
		</table>
		<c:import url="rodape.jsp" />
</body>
</html>