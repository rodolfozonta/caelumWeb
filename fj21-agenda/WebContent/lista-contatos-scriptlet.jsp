<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page
	import="java.util.*,
		 br.com.caelum.agenda.dao.*,
		 br.com.caelum.agenda.modelo.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contato</title>
</head>
<body>
	<table>
	
	<th>Nome</th>
	<th>Email</th>
	<th>Endereço</th>
	<th>DataNascimento</th>
		
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();

			for (Contato contato : contatos) {
		%>
		<tr>
			
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getDataNascimento().getTime()%></td>
		</tr>
		<%
			}
		%>
	</table>
<a href="bemvindo.jsp">Voltar</a>
</body>
</html>