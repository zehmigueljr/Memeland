package br.sc.senai.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
			conteudo.setTags(rs.getString("tags"));
			conteudo.setViews(rs.getInt("views"));
			
			listaConteudo.add(conteudo);
		}
		return listaConteudo;
	}
	
	public void insertConteudo(Conteudo conteudo) throws SQLException{
		String sql = null;
		PreparedStatement stmt = null;
		if(conteudo.getId() > 0){
		sql = "insert into conteudo "
					+ "(nome,url,data_cadastro,data_atualizacao,aprovado,criador,categoria,sub_categoria) "
					+ "values (?,?,?,?,?,?,?,?,?,?)";
		} else {
		sql = "update conteudo "
					+ "set nome= ?,"
					+ "url= ?,"
					+ "data_cadastro= ?,"
					+ "data_atualizacao= ?,"
					+ "aprovado= ?,"
					+ "criador= ?,"
					+ "categoria= ?,"
					+ "sub_categoria= ? "
					+ "where id =" + conteudo.getId();
		}
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, conteudo.getNome());
		stmt.setString(2, conteudo.getUrl());
		stmt.setDate(3, conteudo.getDataCadastro());
		stmt.setDate(4, conteudo.getDataAtualizacao());
		stmt.setBoolean(5, conteudo.getAprovado());
		stmt.setInt(6, conteudo.getCriador());
		stmt.setInt(7, conteudo.getCategoria());
		stmt.setInt(8, conteudo.getSubCategoria());
		stmt.setString(9,conteudo.getTags());
		stmt.setInt(10, conteudo.getViews());
		stmt.execute();
	}
	
	public Conteudo getConteudo(int id) throws SQLException {
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from conteudo where aprovado = 1 and id ="+id);
		
		Conteudo conteudo = new Conteudo();
		while(rs.next()){	
			conteudo.setAprovado(rs.getBoolean("aprovado"));
			conteudo.setCategoria(rs.getInt("categoria"));
			conteudo.setCriador(rs.getInt("criador"));
			conteudo.setDataAtualizacao(rs.getDate("data_atualizacao"));
			conteudo.setDataCadastro(rs.getDate("data_cadastro"));
			conteudo.setId(rs.getInt("id"));
			conteudo.setNome(rs.getString("nome"));
			conteudo.setSubCategoria(rs.getInt("sub_categoria"));
			conteudo.setUrl(rs.getString("url"));
			conteudo.setTags(rs.getString("tags"));
			conteudo.setViews(rs.getInt("views"));
		}	
		return conteudo;
	}
}
