package br.sc.senai.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.sc.senai.model.Conteudo;
import br.sc.senai.service.ConteudoService;

@Controller
@RequestMapping("/")
public class SistemaController {

	private final ConteudoService service;
	
	public SistemaController() throws SQLException {
		this.service = new ConteudoService();
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() throws SQLException {
		ArrayList<Conteudo> listaConteudo = service.getAllConteudo();
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("listaConteudos", listaConteudo);
		return modelAndView;
	}
	
	@RequestMapping(value = "/categorias", method = RequestMethod.GET)
	public ModelAndView categorias() throws SQLException {
		ModelAndView modelAndView = new ModelAndView("categorias");
		return modelAndView;
	}
	@RequestMapping(value = "/catimg", method = RequestMethod.GET)
	public ModelAndView catimg() throws SQLException {
		ModelAndView modelAndView = new ModelAndView("catimg");
		return modelAndView;
	}
	@RequestMapping(value = "/catvideo", method = RequestMethod.GET)
	public ModelAndView catvideo() throws SQLException {
		ModelAndView modelAndView = new ModelAndView("catvideo");
		return modelAndView;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin() throws SQLException {
		ModelAndView modelAndView = new ModelAndView("admin");
		return modelAndView;
	}
	
	@RequestMapping(value = "/aprovaadmin", method = RequestMethod.GET)
	public ModelAndView aprovaadmin() throws SQLException {
		ModelAndView modelAndView = new ModelAndView("aprovaadmin");
		return modelAndView;
	}
	
	@RequestMapping(value = "/media/{id}", method = RequestMethod.GET)
	public ModelAndView meme(@PathVariable int id) throws SQLException {
		Conteudo meme = service.getConteudo(id);
		ModelAndView modelAndView = new ModelAndView("meme");
		modelAndView.addObject("meme", meme);
		return modelAndView;
	}
}