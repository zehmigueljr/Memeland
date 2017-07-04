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

$('.ui.checkbox').checkbox();

$('.ui.dropdown').dropdown({
  allowAdditions: true
});

$('#aprovar-dica').click(function(){
	var data = {}; 
		data['id'] = $('#aprovar-meme').data('id');
	console.log(data);
	$.ajax({ 
	    url: "aprovardica",
	    type: "POST",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
	    success: function(data){
	    }
	});
});

$('#enviar-dica').parent().click(function(){
	var filearq = $('#file-dica')[0].files[0];
	var fileName = filearq.name;
	
	console.log(file);
	console.log(fileName);
	
	var data = {};
		data["id"] = 0;
		data["nome"] = '';
		data["url"] = '';
		data["dataCadastro"] = '';
		data["dataAtualizacao"] = '';
		data["aprovado"] = 0;
		data["criador"] = 0;
		data["categoria"] = 0;
		data["subCategoria"] = $('#categoria-dica').val();
		data["tags"] = $('#tag').val();
		data["views"] = 0

	var file = new FormData();
		file.append('file', filearq, fileName);
		file.append('data', new Blob([JSON.stringify(data)], { type:"application/json"}));
	
	console.log(file);	
	$.ajax({ 
	    url: "enviardica",
	    headers: {
	         "Content-Type": undefined
	    },
	    type:"POST",
	    data: file,
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,       
	    processData: false,
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