package com.concafras.gestao.form;

import com.concafras.gestao.model.ObjetoGerenciado;

public class PaisVO extends ObjetoGerenciado {

	private Integer id;
	
	private String nome;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
