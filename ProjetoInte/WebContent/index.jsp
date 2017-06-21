<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="/WebContent/resources/libs/SemanticUI/semantic.min.css" rel="stylesheet" />
	<title>
        MemeLand
    </title>
</head>
	<body>
			<!--<ul>
		<c:forEach var="conteudo" items="${listaConteudos}">
				<li><c:out value="${conteudo.nome}"/></li>
				<li><c:out value="${conteudo.dataCadastro}"/></li>
			</c:forEach>
		</ul> -->
		<div class="ui fixed inverted menu">
			<a class="active item">
				Home
			</a>
			<a class="item">
				Envie uma Dica
			</a>
			<a class="item">
				Contato
			</a>
			<div class="right menu">
				<div class="item">
				<div class="ui icon input">
					<input placeholder="Search..." type="text">
					<i class="search link icon"></i>
				</div>
				</div>
				<a class="ui item">
				Logout
				</a>
			</div>
			</div>
			<div class="ui grid vertical divider">
				<div class="column">
					<div class="ui grid equal width vertical divider">
						<div class="column">
							Mais recentes
						</div>
						<div class="column">
							Mais votados
						</div>
					</div>
				</div>
				<div class="three wide column">
					Top usuários		
				</div>
			</div>

		<script src="/WebContent/resources/libs/jquery/jquery-3.2.1.min.js"></script>
		<script src="/WebContent/resources/libs/SemanticUI/semantic.min.js"></script>
	</body>
</html>