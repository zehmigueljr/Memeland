<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<a href="/ProjetoInte" class="item">
			Home
		</a>
		<a class="item">
			Categorias
		</a>
		<a class="item" id="btn-enviar-dica">
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
				  <label for="confirm-password">Confirmar Senha</label>
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
		<div class="ui small modal" id="modal-enviar-dica">
			<i class="close icon"></i>
			<div class="header">
				Envie uma dica!
			</div>
			<div class="content">
				<form class="ui form">
				  <div class="field">
				  <label>Categorias</label>
				  <select class="ui fluid search dropdown" multiple="">
					  <option value="">Categorias</option>
					  <option value="1">Animação</option>
					  <option value="2">Animais</option>
					  <option value="3">Animes</option>
					  <option value="4">Arte</option>
					  <option value="5">Artistas</option>
					  <option value="6">Blogs e Pessoas</option>
					  <option value="7">Cartoon</option>
					  <option value="8">Ciência e Tecnologia</option>
					  <option value="9">Cinema</option>
					  <option value="10">Esportes</option>
					  <option value="11">Entretenimento</option>
					  <option value="12">Games</option>
					  <option value="13">Humor</option>
					  <option value="14">Motores</option>
					  <option value="15">Música</option>
					  <option value="16">Notícias</option>
					  <option value="17">Publicidade</option>
					  <option value="18">Reações</option>
					  <option value="19">Viagens e Lugares</option>
					  <option value="20">Vida e Lazer</option>
					</select>
				  </div>
				  <div class="field">
				    <label for="url-enviar">Url</label>
				    <input type="url" name="url-enviar" placeholder="www.URL.com.br/memeloco">
				  </div>
				  <div class="field">
				    <label for="tag-enviar">Tags(Separar tags por Vírgula)</label>
				    <input type="text" name="tag-enviar" placeholder="trump,dilma,simpsons,gatos">
				  </div>
				  <div class="field">
				  	<input type="file"/>
				  </div>
				  	
				  	<button class="ui red fluid button" type="submit">
				  		<i class="send icon"></i>
				  		Enviar dica
				  	</button>
			  </form>
			</div>
		</div>
	</div>
	<div class="ui small modal" id="motivo-reprovacao">
		<i class="close icon"></i>
		<div class="header">
			Motivo da reprovação meme
		</div>
		<div class="content">
			<div class="ui form">
			  <div class="field">
			    <label>Este motivo será enviado ao e-mail do Autor</label>
			    <textarea rows="2"></textarea>
			  </div>
			  <div class="actions">
			    <div class="ui positive right floated button"><i class="thumbs down icon"></i>Reprovar</div>
			    <div class="ui negative right floated button"><i class="remove icon"></i>Cancelar</div>
			  </div>
			</div>
		</div>
	</div>
	<div class="ui fixed inverted menu">
		<a href="/ProjetoInte"><img src="resources/medias/logotipo.png" id="logo-superior"></a>
		<div class="ui category search item" id="busca">
     			<div class="ui icon input">
       			<input class="prompt" type="text" placeholder="Busca memes...">
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
	<div class="pushable content-margin-top">
		<div class="ui equal width grid content-margin-lateral ">
			<div class="column">
				<h2 class="header texto-branco">Aprovador de memes</h2>
				<c:if test="${meme.id > 0}">
    				<img src="${meme.url}" class="img-home">		
				</c:if>			
			</div>
			<c:if test="${meme.id == 0}">
    			<h2>Não há memes para serem aprovados!</h2>
			</c:if>
			<c:if test="${meme.id > 0}">
				<div class="five wide computer sixtenn wide mobile column">
				<h3 class="header texto-branco">Info. meme</h3>
				<div class="ui red top attached segment" id="aprovar-meme" data-id=${meme.id }>
					<form class="ui form">
					  <div class="field">
					    <label>Autor</label>
					    <input type="text" disabled name="autor-meme" value="Nome do Autor">
					  </div>
					  <div class="field">
					    <label>E-mail Autor</label>
					    <input type="email" disabled name="email-autor-meme" value="E-mail autor meme">
					  </div>
					  <div class="field">
				  		<label>Categorias</label>
					 	 <select class="ui fluid search dropdown" multiple="">
						  <option value="">Categorias</option>
					 		<c:forEach var="categoria" items="${listaCategorias}">
								<option value="${categoria.id}" ${meme.subCategoria == categoria.id ? 'selected' : ''}>${categoria.descricao}</option>
					 		</c:forEach>
						</select>
				  	</div>
					  <div class="field">
					    <label>Tags</label>
					    <input type="text" name="tags-meme" placeholder="Tags" value="${meme.tags}">
					  </div>
					  <div class="grouped fields">
					    <label>Tipo</label>
					    <div class="field">
					      <div class="ui radio checkbox">
					        <input type="radio" name="tipo">
					        <label>Imagem/gifs</label>
					      </div>
					    </div>
					    <div class="field">
					      <div class="ui radio checkbox">
					        <input type="radio" name="tipo">
					        <label>Videos/vines</label>
					      </div>
					    </div>
					  </div>
					</form>
				</div>
				<div class="ui two bottom attached buttons">
				    <div class="ui negative button" id="btn-reprovar-meme"><i class="thumbs down icon"></i>Reprovar</div>
				    <div class="ui positive button" id="btn-aprovar-meme"><i class="thumbs up icon" id="aprovar-dica"></i>Aprovar</div>
				</div>
			</div>
			</c:if>
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