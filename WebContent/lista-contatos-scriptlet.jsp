<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*,
	br.com.caelum.agenda.dao.*,
	br.com.caelum.agenda.modelo.*,
	java.text.SimpleDateFormat;" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for(Contato contato: contatos){
				SimpleDateFormat date = new SimpleDateFormat("DD/MM/YYYY");
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=date.format(contato.getDataNascimento().getTime()) %></td>
			</tr>
		<%
			}
		%>
	</table>

</body>
</html>