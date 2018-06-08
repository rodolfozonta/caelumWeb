<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Primeiro JSP</title>
</head>
<body>
<%--Primeira pagina JSP --%>
<%String mensagem = "Bem vindo ao Sistema de agenda do fj-21"; %>
<%out.println(mensagem); %>
<br/>
<%String desenvolvido = "Desenvolvido por Rodolfo Zonta"; %>
<%=desenvolvido %>
<br/>
<a href="lista-contatos-scriptlet.jsp">Lista de Contatos</a> <br/>
<a href="adiciona-contato.jsp">Adiciona Contatos</a> <br/>
<a href="digita-idade.jsp">Digita Idade</a> <br/>
<a href="lista-contatos.jsp">Lista Contatos Param</a> <br/>
<%System.out.println("Tudo foi executado!"); %>

</body>
</html>