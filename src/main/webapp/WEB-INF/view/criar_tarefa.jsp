<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico" />
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar Tarefa</title>
</head>
<body>

 <jsp:include page="includes/header.jsp" />
	
	<div class="container">

		<div class="jumbotron text-center">
			<h3>Crie Uma Tarefa</h3>			
		</div>

		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-6">
			
				<div class="panel panel-primary">				
					<div class="panel-heading"></div>
					<div class="panel-body">
						<form data-toggle="validator" action="salvar_tarefa" method="post">
						   <input type="hidden" value="${card.id}">
						
						    <div class="form-group">
								<label>Nome</label> <input class="form-control" type="text"
									name="nome" required>
							</div>
							<div class="form-group">
								<label>Prioridade</label> 
								<select name="prioridade" class="form-control">
									<option>Baixa</option>
									<option>Media</option>
									<option>Alta</option>									
								</select>
							</div>
							
							<button class="btn btn-primary pull-right" type="submit">Criar Tarefa</button>
						</form>
						<a href="minhas_tarefas" class="btn btn-primary">Voltar</a>

					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>