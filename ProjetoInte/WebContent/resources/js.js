$(document).ready(function() {
$('#btn-menu').click(function (){
	$('#menu-lateral').sidebar('toggle');
});
$('.btn-login').click(function(){
	$('#modal-login').modal('show');
});
$('#btn-cadastro').click(function(){
	$('#modal-cadastro').modal('show');
});
$('#btn-enviar-dica').click(function(){
	$('#modal-enviar-dica').modal('show');
});
$('#btn-reprovar-meme').click(function(){
	$('#motivo-reprovacao').modal('show');
});
$('#btn-contato').click(function(){
	$('#modal-contato').modal('show');
});
$('#btn-esqueceu').click(function(){
	$('#modal-esqueceu').modal('show');
});

$('.ui.checkbox').checkbox();

$('.ui.dropdown').dropdown({
  allowAdditions: true
});

$('#enviar-dica').click(function(){
	var data = {};
		data["id"] = 0;
		data["nome"] = '';
		data["url"] = '';
		data["dataCadastro"] = '';
		data["dataAtualizacao"] = '';
		data["aprovado"] = 0;
		data["criador"] = 0;
		data["categoria"] = 1;
		data["subCategoria"] = 1;
		data["tags"] = $('tag').val();
		data["views"] = 0
		console.log(data);
		console.log(JSON.stringify(data));

	
	$.ajax({ 
	    url: "enviardica", 
	    headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json' 
	    },
	    type:"POST",
	    data: JSON.stringify(data),
	    dataType: "json",
	    async: false,
	    cache: false,        
	    processData:false,
	    success: function(data){
	    }
	});
});
$('#form-cadastro')
.form({
  fields: {
	  nomecompleto: {
      identifier: 'nome-completo',
      rules: [
        {
          type   : 'empty',
          prompt : 'Favor insira seu nome.'
        }
      ]
    },
    
    emailcadastro: {
        identifier: 'email-cadastro',
        rules: [
          {
            type   : 'empty',
            prompt : 'Favor um e-mail válido.'
          }
        ]
    },
    
    datanascimento: {
        identifier: 'data-nascimento',
        rules: [
          {
            type   : 'empty',
            prompt : 'Favor a data de seu nascimento.'
          }
        ]
    },
    
    generocadastro: {
      identifier: 'generocadastro',
      rules: [
        {
          type   : 'empty',
          prompt : 'Favor informe um genero'
        }
      ]
    },
    passwords: {
      identifier: 'password-cadastro',
      rules: [
        {
          type   : 'empty',
          prompt : 'Informe uma senha'
        }
      ]
    },
    
    confirmpassword: {
        identifier: 'confirm-password',
        rules: [
          {
            type   : 'match[passwords]',
            prompt : 'Campo confirmar senha deve ser igual sua senha'
          }

        ]
      },
      
    termosuso: {
      identifier: 'termosuso',
      rules: [
        {
          type   : 'checked',
          prompt : 'Você deve aceitar os termos e politicas de Uso'
        }
      ]
    }
  }
});
});