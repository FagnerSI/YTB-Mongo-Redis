package br.com.ytb.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection = "users")
public class Usuario {	
	
	@Id
	private String id;
	
	private String nome;
	
	private String userName;
	
	private String senha;	
		
	public Usuario() {
		
	}
		
	public Usuario(String nome, String userName, String senha) {
		this.nome = nome;
		this.userName = userName;
		this.senha = senha;
	}   
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

		
	@Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Id:- " + getId() + ", Nome:- " + getNome() + ", UserName:- " + getUserName());
        return str.toString();
    }


	
}
