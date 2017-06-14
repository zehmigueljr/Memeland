package br.sc.senai.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.sc.senai.model.Conteudo;
import br.sc.senai.service.ConteudoService;

@Controller
@RequestMapping("/sistema")
public class SistemaController {

	private final ConteudoService service;
	
	public SistemaController() throws SQLException {
		this.service = new ConteudoService();
	}
	
	@RequestMapping(value = "/boasvindas", method = RequestMethod.GET)
	public ModelAndView boasVindas() throws SQLException {
		ArrayList<Conteudo> listaConteudo = service.getAllConteudo();
		ModelAndView modelAndView = new ModelAndView("boasVindas");
		modelAndView.addObject("listaConteudos", listaConteudo);
		return modelAndView;
	}
}