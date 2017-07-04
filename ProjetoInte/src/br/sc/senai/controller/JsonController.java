package br.sc.senai.controller;

import java.sql.SQLException;
import java.io.File;
import java.io.IOException;
import java.sql.Date;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import br.sc.senai.model.Conteudo;
import br.sc.senai.service.ConteudoService;
import br.sc.senai.service.Util;

@RestController
@RequestMapping("/")
public class JsonController {

	private final ConteudoService service;
	
	public JsonController() throws SQLException {
		this.service = new ConteudoService();
	}
	
	@RequestMapping(value = "/enviardica", method = RequestMethod.POST, consumes = {"multipart/form-data"})
	public void enviarDica(@RequestPart("data") Conteudo data, @RequestPart("file") MultipartFile file) throws SQLException, IOException{
		Date dataAtual = new Date(System.currentTimeMillis());
		data.setDataAtualizacao(dataAtual);
		data.setDataCadastro(dataAtual);
		System.out.println(data.getTags());
		int id = service.insertConteudo(data);
		String caminho = "D:/resources/medias/"+ id +"."+ file.getOriginalFilename().split("\\.")[1];
		System.out.println(caminho);
		String url = "D:/resources/medias/"+ id +"."+ file.getOriginalFilename().split("\\.")[1];
		data.setId(id);
		data.setUrl(url);
		service.insertConteudo(data);
		File newFile = Util.multipartToFile(file);
		newFile.renameTo(new File(caminho));
	}
	
	@RequestMapping(value = "/aprovardica", method = RequestMethod.POST,consumes = MediaType.APPLICATION_JSON_VALUE)
	public void aprovarDica(@RequestBody Conteudo data) throws SQLException {
		service.aprovarDica(data.getId());
	}
}
