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

$('.ui.checkbox').checkbox();

$('.ui.dropdown').dropdown({
  allowAdditions: true
});