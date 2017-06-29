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
			<i class="home large icon"></i>Home
		</a>
		<a class="item" href="./categorias">
			<i class="browser large icon"></i>Categorias
		</a>
		<a class="item" id="btn-enviar-dica">
			<i class="idea large icon"></i>Enviar dica
		</a>
		<a class="item" id="btn-contato">
			<i class="comments large icon"></i>Contato
		</a>
		<a class="item btn-login">
			<i class="sign in large icon"></i>Login
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
						  <a href="#" id="btn-esqueceu">Dificuldade em acessar? Clique aqui</a>
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
	<div class="ui small modal" id="modal-esqueceu">
			<i class="close icon"></i>
		<div class="header">
			Dificuldades no acesso
		</div>
		<div class="content" >
			<form class="ui form">
				<div class="field">
				<label>	Caso não lembra sua <b>Senha</b> nos informe o seu e-mail que enviaremos o procedimento para a recuperação em seu.
				</label>
				    <input type="email" name="email-login" placeholder="example@memeland.com.br">
			  	</div>
			</form>
		<div class="ui divider"></div>
			
			<form class="ui form">
				<div class="field">
				<label> Caso não lembra seu e-mail informe seu <b>Nome de usuário</b> que enviaremos o procedimento para a recuperação em seu e-mail cadastrado.
				</label>
				    <input type="text" name="nome-user" placeholder="Meu Nome de Usuário">
			  	</div>
			</form>
		</div>
		<div class="actions">
			<button class="ui negative button"><i class="remove icon"></i>Cancelar</button>
			<button class="ui positive button"><i class="send icon"></i>Enviar</button>
		</div>
	</div>
	<div class="ui small modal" id="modal-cadastro">
		<i class="close icon"></i>
		<div class="header">
			Cadastro
		</div>
		<div class="content" >
			<form class="ui form" id="form-cadastro">
			  <div class="field">
			    <label for="nome-completo">Nome completo</label>
			    <input type="text" name="nome-completo" data-validate="nomecompleto" placeholder="Informe seu nome completo">
			  </div>
			  <div class="two fields">
			  	<div class="field">
			    	<label for="data-nascimento">Data de Nascimento</label>
			    	<input type="date" name="data-nascimento" data-validate="datanascimento">
			  	</div>
				  <div class="field">
				  	<label>Genero</label>
				    <select class="ui dropdown" data-validate="generocadastro">
					  <option value="">Genero</option>
					  <option value="1">Masculino</option>
					  <option value="0">Feminino</option>
					</select>
				  </div>
			  </div>
			  <div class="field">
			    <label for="email-cadastro">E-mail</label>
			    <input type="email" name="email-cadastro" data-validate="emailcadastro" placeholder="Informe seu e-mail">
			  </div>
			  <div class="two fields">
	  			<div class="field">
				  <label for="password-cadastro">Senha</label>
				  <input type="password" name="password-cadastro"  data-validate="passwords" placeholder="Informe uma senha">
				</div>
				<div class="field">
				  <label for="confirm-password">Confirmar Senha</label>
				  <input type="password" name="confirm-password" data-validate="confirmpassword" placeholder="Confirmar senha">
				</div>			  
			  </div>
			  <div class="field">
			    <div class="ui checkbox" data-validate="termosuso">
			      <input type="checkbox" tabindex="0" class="hidden" data-validate="termosuso">
			      <label>Eu concordo com os termos e condições de uso deste site</label>
			    </div>
			  </div>
			  <div class="ui error message"></div>
			  <button class="ui red fluid button" type="submit">Cadastrar</button>
			</form>
		</div>
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
				  <select class="ui fluid search dropdown">
				 	 <option value="">Categorias</option>
					 <c:forEach var="categoria" items="${listaCategorias}">
						<option value="${categoria.id}">${categoria.descricao}</option>
					 </c:forEach>
				  </select>
				  </div>
				  <div class="field">
				    <label for="url-enviar">Url</label>
				    <input type="url" id="url" name="url-enviar" placeholder="www.URL.com.br/memeloco">
				  </div>
				  <div class="field">
				    <label for="tag-enviar">Tags(Separar tags por Vírgula)</label>
				    <input type="text" id="tag" name="tag-enviar" placeholder="trump,dilma,simpsons,gatos">
				  </div>
				  <div class="field">
				  	<input type="file"/>
				  </div>
			  </form>
			  	<button class="ui red fluid button" id="enviar-dica">
				  	<i class="send icon"></i>
				  		Enviar dica
				</button>
			</div>
		</div>
	<div class="ui small modal" id="modal-contato">
	<i class="close icon"></i>
		<div class="header">
			Contato
		</div>
		<div class="content">
			<div class="ui equal width grid">
				<div class="row">
					<div class="four wide column">
						<img src="resources/medias/joker.jpg" class="ui fluid image">
					</div>
					<div class="column">
						<div class="ui header">Marcos Henrique Stüber Dreveck</div>
						<div class="content">Telefone (000)0000-0000</div>	
						
						<div class="content">
							<button class="ui black icon button">
						  	  <i class="facebook icon"></i>
							</button>
							<button class="ui black icon button">
							  <i class="twitter icon"></i>
							</button>
							<button class="ui black icon button">
							  <i class="instagram icon"></i>
							</button>	
						</div>
					</div>			
				</div>
				<div class="row">
					<div class="four wide column">
						<img src="resources/medias/ze.jpg" class="ui fluid image">
					</div>
					<div class="column">
						<div class="ui header">José Miguel da Silveira Junior</div>
						<div class="content">Telefone (000)0000-0000</div>	
						
						<div class="content">
							<button class="ui black icon button">
						  	  <i class="facebook icon"></i>
							</button>
							<button class="ui black icon button">
							  <i class="twitter icon"></i>
							</button>
							<button class="ui black icon button">
							  <i class="instagram icon"></i>
							</button>	
						</div>
					</div>			
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
				<i class="sign in large icon"></i>Login
			</a>
	   		<a class="item" id="btn-menu">
	   			<i class="ui large content icon"></i>
	   		</a>
 		</div>
	</div>
	<div class="pushable content-margin-top">
	<div class="ui equal width grid content-margin-lateral ">
		<div class="column">
			<h3 class="header texto-branco">+ Recentes</h3>
			<div class="ui stackable two column grid">
				<c:forEach var="conteudo" items="${listaConteudos}">
					<div class="column" data-id=${conteudo.id }><a href="media/${conteudo.id}"><img src="${conteudo.url}" class="img-home"></a></div>
				</c:forEach>
			</div>
		</div>		
		<div class="column">
			<h3 class="header texto-branco">+ Visualizados</h3>
			<div class="ui stackable two column grid">
				<c:forEach var="conteudo" items="${listaConteudos}">
					<div class="column" data-id=${conteudo.id }><a href="media/${conteudo.id}"><img src="${conteudo.url}" class="img-home"></a></div>
				</c:forEach>
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