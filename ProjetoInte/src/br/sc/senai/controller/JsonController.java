package br.sc.senai.controller;

import java.sql.SQLException;
import java.sql.Date;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.sc.senai.model.Conteudo;
import br.sc.senai.service.ConteudoService;

@RestController
@RequestMapping("/")
public class JsonController {

	private final ConteudoService service;
	
	public JsonController() throws SQLException {
		this.service = new ConteudoService();
	}
	
	@RequestMapping(value = "/enviardica", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void enviarDica(@RequestBody Conteudo data) throws SQLException{
		Date dataAtual = new Date(System.currentTimeMillis());
		data.setDataAtualizacao(dataAtual);
		data.setDataCadastro(dataAtual);
		service.insertConteudo(data);
	}
}
