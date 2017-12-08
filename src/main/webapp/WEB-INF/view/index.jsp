<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="img/favicon.ico"/>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />
   	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body> 
 	
 	<jsp:include page="includes/header.jsp" />

<div class="container">

	<div class="jumbotron text-center">
		<h3>Seja Bem-Vindo!</h3>
		<h5>Tenha melhor controle de suas atividades.</h5>
	 	<a class="btn btn-primary btn-md pull-right" href="criar_card"> Criar
			Card <span class="glyphicon glyphicon-plus-sign"></span>
		</a>
	</div>


	<div class="row">
	    <c:forEach items="${cards}" var="card">
			<div class="col-md-4 col-sm-6">
			  <div class="card">
				 <div class="card-header">
						<h4 class="card-title text-center">${card.titulo}</h4>
				 </div>
				 <div class="card-block">
					<a class="btn btn-primary pull-rigth" href="/card/${card.id}">Abrir</a>
								
					<a class="btn btn-danger pull-right" href="/remove_card/${card.id}">
						<span class="glyphicon glyphicon-trash"></span></a> 
								
					<a class="btn btn-warning pull-right" href="update_card/${card.id}"> 
						<span class="glyphicon glyphicon-glyphicon glyphicon-pencil"></span></a>
				 </div>
			  </div>
		</div>
	  </c:forEach>
   </div>
</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">${titulo}Titulo</h4>
						<p>${descricao}Descrição</p>
					</div>
					
					<div class="modal-body">
					  <table class="table">					 	
						<tbody>
							<tr>							
								<td>................</td>
							</tr>
						</tbody>
					  </table>
				    </div>
					
				    <div class="modal-footer">
						<button type="button" class="btn btn-primary center-block" data-dismiss="modal">Sair</button>
					</div> 
				</div>
		</div>
	</div>	

</body>
</html>
