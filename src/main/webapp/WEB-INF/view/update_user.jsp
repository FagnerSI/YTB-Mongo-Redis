<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="shortcut icon" href="img/favicon.ico"/>
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="includes/header.jsp" />

	<div class="container">

		<div class="jumbotron text-center">
			<h3>Altere Suas Infomações!</h3>
			<h5>Altere suas informações de Usuario.</h5>
		</div>

		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading"></div>
					<div class="panel-body">

						<form class="form" action="/update_user/update_u" method="POST">
                           <input type="hidden" name="id" value="${logado.id}" />
                           <input type="hidden" name="userName" value="${logado.userName}" />
                           
							<div class="form-group">
							    <label>Nome</label> 
								<input type="text" class="form-control" name="nome"
									value="${logado.nome}" />
							</div>

							<div class="form-group">
							    <label>Senha</label> 
								<input type="password" class="form-control" name="senha"
									value="${logado.senha}" />
							</div>
							<div class="form-group">
							  <button class="btn btn-primary pull-right" type="submit">Salvar
								Alterações</button>
						   <%--									
							  <a class="btn btn-primary" href="/remover/${logado.id}">Remover Conta</a>	
							</div> --%>														
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>