package br.sc.senai.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import br.sc.senai.model.*;

@Service
public class ConteudoService {
	private Connection conn;
	
	public ConteudoService() throws SQLException {
	    Singleton.getInstance();
	    this.conn = Singleton.getConnInst();
	}
	    
	public ArrayList<Conteudo> getAllConteudo() throws SQLException {
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from conteudo");
		ArrayList<Conteudo> listaConteudo = new ArrayList<Conteudo>();
		
		while(rs.next()){
			Conteudo conteudo = new Conteudo();
			
			conteudo.setAprovado(rs.getBoolean("aprovado"));
			conteudo.setCategoria(rs.getInt("categoria"));
			conteudo.setCriador(rs.getInt("criador"));
			conteudo.setDataAtualizacao(rs.getDate("data_atualizacao"));
			conteudo.setDataCadastro(rs.getDate("data_cadastro"));
			conteudo.setId(rs.getInt("id"));
			conteudo.setNome(rs.getString("nome"));
			conteudo.setSubCategoria(rs.getInt("sub_categoria"));
			conteudo.setUrl(rs.getString("url"));
			
			listaConteudo.add(conteudo);
		}
		return listaConteudo;
	}
}
