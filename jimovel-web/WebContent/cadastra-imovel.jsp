<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...Cadastro de Imovel...</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<link type="text/css" href="resources/css/imovel.css" rel="stylesheet" /> 
<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h2>
		<i>...Cadastro de Imóveis...</i>
	</h2>
	<hr />
	<form action="mvc" method="post">
		<table>
			<tr>
				<td><i>Proprietário:</i></td>
				<td><input type="text" name="proprietario"
					value="${imovel.proprietario}" /></td>
			</tr>
			<tr>
				<td><i>Endereço:</i></td>
				<td><input type="text" name="endereco"
					value="${imovel.endereco}" /></td>
			</tr>
			<tr>
				<td><i>Tipo contrato:</i></td>
				<td><select name="tipo">
						<option value="${imovel.tipo}" selected="selected">${imovel.tipo}</option>
						<c:if test="${imovel.tipo eq 'venda' }">
							<option value="aluguel">aluguel</option>
						</c:if>
						<c:if test="${imovel.tipo eq 'aluguel' }">
							<option value="venda">venda</option>
						</c:if>
						<c:if test="${empty imovel.tipo}">
							<option value="aluguel">aluguel</option>
							<option value="venda">venda</option>
						</c:if>
				</select></td>
			</tr>
			<tr>
				<td><i>Contato:</i></td>
				<td><input type="text" name="contato" value="${imovel.contato}" /></td>
			</tr>
			<tr>
				<td><i>Valor:</i></td>
				<td><input type="text" name="valor" value="${imovel.valor}" /></td>
			</tr>
			<tr>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
				<fmt:formatDate value="${imovel.dataInclusao.time}"
					pattern="dd/MM/yyyy" var="dataFmt" />
				<td>Data Inclusão:</td>
				<td><custom:campoData id="dataInclusao" value="${dataFmt}" /></td>
			</tr>
		</table>
		<hr />
		<br /> 
		<input type="hidden" name="id" value="${imovel.id}" />
		<input type="hidden" name="servico" value="GravaImovelServico" />
		<input type="submit" value="Gravar" />
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>