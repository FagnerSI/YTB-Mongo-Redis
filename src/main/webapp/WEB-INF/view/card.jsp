<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="shortcut icon" href="img/favicon.ico"/>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card</title>
</head>
<body>
   <jsp:include page="includes/header.jsp" />
  
  <div class="container">
  <div class="jumbotron text-center">
		<h3>${card.titulo}</h3>
		<h5>${card.descricao}</h5>
	 	<a class="btn btn-primary btn-md pull-right" href="criar_tarefa"> Criar
			Tarefa <span class="glyphicon glyphicon-plus-sign"></span>
		</a>
  </div>
 <!--  <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
    40%
 </div> -->
</div>
  <div class="row">
     <div class="col-md-offset-1 col-md-10">  
     <div class="table-responsive">  					
  	  <table class="table table-hover table-bordered">	   
		<thead class="bg-primary">
			<tr class="text-center">
			   <!--  <th>Realizada</th> -->
				<th>Tarefas</th>
				<th>Prioridade</th> 
				<th>Editar</th>
				<th>Excluir</th> 
			<tr>	
		</thead>
		<tbody>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
				    <!-- <td class="text-center"><input type="checkbox"></td> -->
					<td>${tarefa.nome}</td>
					<td class="text-center">${tarefa.prioridade}</td>
					<td><a class="btn btn-warning" href="/update_tarefa/${tarefa.id}">
					    <span class="glyphicon glyphicon-glyphicon glyphicon-pencil"></span> Editar</a></td>
					<td><a class="btn btn-danger"  href="/remove_tarefa/${tarefa.id}">
					    <span class="glyphicon glyphicon-trash"></span> Excluir</a></td>
				</tr>
		   </c:forEach>
		</tbody>
	  </table>
	</div>	
  	</div>
</div> 

</body>
</html>