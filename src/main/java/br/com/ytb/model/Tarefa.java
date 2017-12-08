 package br.com.ytb.model;

public class Tarefa {
   
	
    private String id;  
    
	private String nome;	
	private String prioridade;	
	
	public Tarefa () {
		
	}
	
	public Tarefa (String nome, String prioridade) {		
		this.nome = nome;
		this.prioridade = prioridade;
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

	public String getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}


	
}
