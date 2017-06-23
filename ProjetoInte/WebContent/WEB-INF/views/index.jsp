<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta name="viewport" content="width=device-width">
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <link rel="stylesheet" type="text/css" href="resources/SemanticUI/semantic.min.css" />
		<title>
	        MemeLand
	    </title>
	</head>
	<body>
		<div class="ui fixed inverted menu">
			<img src="resources/medias/logotipo.png">
			<div class="ui category search item">
      			<div class="ui icon input">
        			<input class="prompt" type="text" placeholder="Search animals...">
        			<i class="search link icon"></i>
     			</div>
     			<div class="results"></div>
   			</div>
			<div class="right menu">
	   			<a class="item"><i class="ui large content icon"></i></a>
	 		</div>
			</div>		
		<div class="ui sidebar inverted vertical menu">
			<a class="item">
				Home
			</a>
			<a class="item">
				Categorias
			</a>
			<a class="item">
				Enviar dica
			</a>
			<a class="item">
				Contato
			</a>
			<a class="item">
				Login
			</a>
		</div>
	
	<div class="pusher">
	<div class="ui equal width grid ">
		<div class="column">
			<h3 class="header">Mais Visualizados</h3>
		</div>
		<div class="column">
			<h3 class="header">Mais Votados</h3>
		</div>
		<div class="two wide column">
			<h3 class="header">Top Usuarios</h3>
		</div>
	</div>
	
	</div>
	
		<script src="resources/jquery/jquery-3.2.1.min.js"></script>
		<script src="resources/SemanticUI/semantic.min.js"></script>
		<script src="resources/js.js"></script>
	</body>
</html>