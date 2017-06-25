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
})
;