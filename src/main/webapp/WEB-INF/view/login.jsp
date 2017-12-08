<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut icon" href="img/favicon.ico"/>
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login | YTB</title>
</head>
<body>

<jsp:include page="includes/header.jsp" />
	
	
	<div id="fullBg-img">		
		<div class="wrapper">
		
			<form class="form-signin" action="logar" method="POST">
				<h3 class="text-center">Login</h3>
				
				<div class="form-group">
					<input type="text" class="form-control" name="userName"
							placeholder="Usuario" required />
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="senha"
			         		placeholder="Senha" required />
				</div>
				<div class="form-group">
				     <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
				</div>
				<div class="form-group text-center">
				<span>Ainda não tem uma conta?</span><br/>
				 <a data-toggle="modal"	data-target="#criarConta">Crie já sua conta</a>
				</div>
			</form>	
			
		</div>
	</div>

	<!-- Modal-->
	<div class="modal fade" id="criarConta" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title text-center">Crie sua conta</h3>						
					</div>					
					<div class="modal-body">
					  <form class="form-signin" action="criar_conta" method="POST">
						
						<div class="form-group">
							<br/><input type="text" class="form-control" name="userName"
								placeholder="Nome de usuario" required />
						</div>
							
						<div class="form-group">
							<input type="text" class="form-control" name="nome"
								placeholder="Digite seu Nome" required />
						</div>
						
						<div class="form-group">
							<input type="password" class="form-control" name="senha"
								placeholder="Digite uma Senha" required />
						</div>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Salvar</button>
					 </form>
				 </div>				

				</div>
		   </div>
	</div>	
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>