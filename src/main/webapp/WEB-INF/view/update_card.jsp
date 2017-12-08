<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="img/favicon.ico"/>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />
   	<meta charset="UTF-8">
<title>Alterar Card</title>
</head>
<body>

<jsp:include page="includes/header.jsp" />
	
	<div class="container">
		
		<div class="jumbotron text-center">
			<h3>Altere Seu Card!</h3>
			<h5>Altere as informações básicas.</h5>
		</div>

		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-6">

				<div class="panel panel-primary">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<form data-toggle="validator" action="update_c" method="post">
							<input type="hidden" name="id" value="${card.id}" />

							<div class="form-group">
								<label class="control-label">Titulo</label> <input
									class="form-control " type="text" name="titulo"
									value="${card.titulo}" required>
							</div>

							<div class="form-group">
								<label class="control-label">Descrição</label> <input
									class="form-control" type="text" name="descricao"
									value="${card.descricao}">
							</div>
							<button class="btn btn-primary pull-right" type="submit">Salvar</button>
						</form>

						<a href="/" class="btn btn-primary">Voltar</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>