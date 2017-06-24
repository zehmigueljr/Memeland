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
    <link rel="stylesheet" type="text/css" href="resources/styles.css" />
	<title>
        MemeLand
    </title>
</head>
<body>		
	<div class="ui sidebar inverted vertical right menu" id="menu-lateral">
		<img src="resources/medias/logotipo.png" id="logo-menu-lateral">
		<div class="ui divider"></div>
		<a href="ProjetoInt" class="item">
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
		<a class="item btn-login">
			Login
		</a>
	</div>
	<div class="ui small modal" id="modal-login">
		<i class="close icon"></i>
		<div class="header">
			Login
		</div>
		<div class="content">
			<div class="ui column centered grid">
				<div class="row">
					<div class="computer only column"></div>
					<div class="eight wide computer sixteen wide mobile column">
						<button class="ui large labeled icon fluid facebook button">
						  <i class="facebook icon"></i>
						   Login com Facebook
						</button>
					</div>
					<div class="computer only column"></div>
				</div>
				
				<div class="row">
					<div class="computer only column"></div>
					<div class="eight wide computer sixteen wide mobile column">
						<button class="ui large labeled icon fluid twitter button">
						  <i class="twitter icon"></i>
						  	Login com Twitter
						</button>
					</div>
					<div class="computer only column"></div>
				</div>
				
				<div class="row">
					<div class="computer only column"></div>
					<div class="eight wide computer sixteen wide mobile column">
						<button class="ui large labeled icon fluid google plus button">
						  <i class="google plus icon"></i>
						  	Login com Google Plus
						</button>
					</div>
					<div class="computer only column"></div>
				</div>
				<div class="row">
					<div class="computer only column"></div>
					<div class="ten wide computer sixteen wide mobile column">
						<form class="ui form inverted attached segment">
						  <div class="field">
						    <label for="email-login">E-mail</label>
						    <input type="email" name="email-login" placeholder="example@memeland.com.br">
						  </div>
						  <div class="field">
						    <label for="password-login">Senha</label>
						    <input type="password" name="password-login" placeholder="Informe sua senha">
						  </div>
						  <div class="ui error message"></div>
						</form>
						<div class="ui two bottom attached buttons">
						  	<button class="ui facebook  button" id="btn-cadastro">Cadastre-se</button>
						   	<button class="ui red  button" type="submit">Login</button>
						  </div>
					</div>
					<div class="computer only column"></div>
				</div>
			</div>	
		</div>
	</div>
	<div class="ui small modal" id="modal-cadastro">
		<i class="close icon"></i>
		<div class="header">
			Cadastro
		</div>
		<div class="content">
			<form class="ui form">
			  <div class="field">
			    <label for="nome-completo">Nome completo</label>
			    <input type="text" name="nome-completo" placeholder="Informe seu nome completo">
			  </div>
			  <div class="field">
			    <label for="email-cadastro">E-mail</label>
			    <input type="email" name="email-cadastro" placeholder="Informe seu e-mail">
			  </div>
			  <div class="two fields">
	  			<div class="field">
				  <label for="password-cadastro">Senha</label>
				  <input type="password" name="password-cadastro" placeholder="Informe uma senha">
				</div>
				<div class="field">
				  <label for="confirm-password">Senha</label>
				  <input type="password" name="confirm-password" placeholder="Confirmar senha">
				</div>			  
			  </div>
			  <div class="two fields">
			  	<div class="field">
			    	<label for="data-nascimento">Data de Nascimento</label>
			    	<input type="date" name="data-nascimento">
			  	</div>
				  <div class="grouped fields">
				    <label>Genero</label>
				    <div class="field">
				      <div class="ui radio checkbox">
				        <input type="radio" name="genero">
				        <label>Masculino</label>
				      </div>
				    </div>
				    <div class="field">
				      <div class="ui radio checkbox">
				        <input type="radio" name="genero">
				        <label>Feminino</label>
				      </div>
				    </div>
				  </div>
			  </div>
			  <div class="field">
			    <div class="ui checkbox">
			      <input type="checkbox" tabindex="0" class="hidden">
			      <label>Eu concordo com os termos e condições de uso deste site</label>
			    </div>
			  </div>
			  <button class="ui red fluid button" type="submit">Cadastrar</button>
		</form>
		</div>
	</div>
	<div class="pushable">
	<div class="ui fixed inverted menu">
		<img src="resources/medias/logotipo.png" id="logo-superior">
		<div class="ui category search item" id="busca">
     			<div class="ui icon input">
       			<input class="prompt" type="text" placeholder="Você disse memes?">
       			<i class="search link icon"></i>
    			</div>
    			<div class="results"></div>
  			</div>
		<div class="right menu">
   			<a class="item mobile-invisivel btn-login">
				Login
			</a>
	   		<a class="item" id="btn-menu">
	   			<i class="ui large content icon"></i>
	   		</a>
 		</div>
	</div>
	<div class="ui equal width grid content-margin-top ">
		<div class="column">
			<h3 class="header texto-branco">+ Recentes</h3>
			<div class="ui two column grid">
				<div class="column">
					<a href=""><img src="resources/medias/1.gif" class="img-home"></a>
					<a><img src="resources/medias/3.gif" class="img-home"></a>
				</div>
				<div class="column">
					<a><img src="resources/medias/2.gif" class="img-home"></a>
					<a><img src="resources/medias/1.gif" class="img-home"></a>				
				</div>
			</div>
		</div>
		<div class="column">
			<h3 class="header texto-branco">+ Visualizados</h3>
			<div class="ui stackable two column grid">
				<div class="column">
					<a><img src="resources/medias/1.gif" class="img-home"></a>
					<a><img src="resources/medias/2.gif" class="img-home"></a>
				</div>
				<div class="column">
					<a><img src="resources/medias/3.gif" class="img-home"></a>
					<a><img src="resources/medias/2.gif" class="img-home"></a>
				
				</div>
			</div>
		</div>
		<div class="two wide column mobile-invisivel center aligned">
			<h3 class="header texto-branco">Tops</h3>
			<a><img src="resources/medias/joker.jpg" class="img-home"></a>
			<a><img src="resources/medias/ze.jpg" class="img-home"></a>
			
		</div>
	</div>	
	</div>
	

	<script src="resources/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/SemanticUI/semantic.min.js"></script>
	<script src="resources/js.js"></script>
</body>
</html>