package br.sc.senai.model;

import java.sql.Date;

public class Conteudo {
	
	private int id;
	private String nome;
	private String url;
	private Date dataCadastro;
	private Date dataAtualizacao;
	private Boolean aprovado;
	private int criador;
	private int categoria;
	private int subCategoria;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public Date getDataAtualizacao() {
		return dataAtualizacao;
	}
	public void setDataAtualizacao(Date dataAtualizacao) {
		this.dataAtualizacao = dataAtualizacao;
	}
	public Boolean getAprovado() {
		return aprovado;
	}
	public void setAprovado(Boolean aprovado) {
		this.aprovado = aprovado;
	}
	public int getCriador() {
		return criador;
	}
	public void setCriador(int criador) {
		this.criador = criador;
	}
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
	public int getSubCategoria() {
		return subCategoria;
	}
	public void setSubCategoria(int subCategoria) {
		this.subCategoria = subCategoria;
	}
	
	
}
