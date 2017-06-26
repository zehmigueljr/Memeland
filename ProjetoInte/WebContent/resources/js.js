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
});