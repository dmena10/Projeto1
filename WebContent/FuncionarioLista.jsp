<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%-- Página que exibe no navegador a lista de funcionários--%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div align="center">
		<P><H1>Lista de Funcionarios</P></H1>
		
		<table border="1">
			<tr>
				<td>Nome</td>
				<td>Cargo</td>
				<td>Salario</td>
				
			</tr>
				
					
	<c:forEach var="funcionario" items="${FuncionarioLista}">
			<tr> 
				
				<td>${funcionario.name}</td>
				<td>${funcionario.role}</td>
				<td>${funcionario.salary}</td>
					
			   </tr>
			
			</c:forEach>			
		</table>
		
		
		
	</div>
	
	
	
 
</body>
</html>

