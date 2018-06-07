<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista-Contatos-JSTL</title>
</head>
<body>

	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	
	<table>
		<!-- PERCORRE CONTATOS montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}">
		<tr>
		<td>${contato.nome}</td>
		<td>
		<c:if test="${not empty contato.email}">
			<a href="mailto:${contato.email}">${contato.email}</a>
		</c:if>
		<c:if test="${empty contato.email}">
			Email não informado
		</c:if>
		
		</td>
		<td>${contato.endereco}</td>
		<td>${contato.dataNascimento.time}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="bemvindo.jsp">Voltar</a> <br/>
</body>
</html>