<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
</head>
<body>
    <header>
		<nav class="navbar bg-primary fixed-top">
		  
		   <div class="container-fluid">
				<div class="navbar-header"> 
				    <button type="button" class="navbar-toggle"
				            data-toggle="collapse"  data-target="#navbar">
			         	 <span class="glyphicon glyphicon-align-justify"></span>
					</button>					
					<a href="/"><img src="/img/logo.png" /></a>
					
				</div>
				<div class="collapse navbar-collapse" id="navbar">				
					<ul class="nav navbar-nav navbar-right">
				   <c:choose>
							<c:when test="${logado != null}">
								<li class="dropdown ">
								<a id="btn-perfil"
									class="dropdown-toggle text-color" data-toggle="dropdown">
										Olá, ${logado.nome} <span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="update_user"> <span
												class="glyphicon glyphicon-user"></span> Editar Perfil
										</a></li>
										<li><a href="/logout"> <span
												class="glyphicon glyphicon-log-out"></span> Logout
										</a></li>
									</ul></li>
							</c:when>
						</c:choose>  
					</ul>
				</div>
			</div>
		</nav>
		
	</header>
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>