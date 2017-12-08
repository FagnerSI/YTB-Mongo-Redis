package br.com.ytb.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ytb.model.Card;
import br.com.ytb.model.Tarefa;
import br.com.ytb.repository.mongo.CardRepositorio;
import br.com.ytb.repository.redis.PersistenceRedis;


@Controller
public class TarefaController {	


	private List<Tarefa> tarefas;

	@Autowired
	private CardRepositorio cardRep;	
	
	private PersistenceRedis pRedis;

	@RequestMapping("/criar_tarefa")
	public String criarCard() {
		return "criar_tarefa";
	}

	@PostMapping("/salvar_tarefa")
	public String create(Tarefa tarefa, HttpSession session) {
		Card c = (Card) session.getAttribute("card");         
		
		this.pRedis = new PersistenceRedis();
		String id = pRedis.getIdTarefa(c);
		tarefa.setId(id);
		
		if(c.getTarefas() == null) {	
			tarefas = new ArrayList<>();
			tarefas.add(tarefa);
			c.setTarefas(tarefas);
			cardRep.save(c);
			return "forward:/minhas_tarefas";
		}
		
		c.getTarefas().add(tarefa);	
		cardRep.save(c);
	    
		return "forward:/minhas_tarefas";
	}	

	@RequestMapping("/remove_tarefa/{id}")
	public String remove(@PathVariable("id") String id, HttpSession session) {				
		Card c = (Card) session.getAttribute("card");		
 
		for(Tarefa t : c.getTarefas()) {
			if(t.getId().equals(id)) {
				c.getTarefas().remove(t);
				break;
			}
		}
		cardRep.save(c);
		return "redirect:/minhas_tarefas";
	}

	@RequestMapping("/update_tarefa/{id}")
	public String update(Model model, @PathVariable("id") String id, HttpSession session) {

		Card c = (Card) session.getAttribute("card");	
		for(Tarefa t : c.getTarefas()) {
			if(t.getId().equals(id)) {
				model.addAttribute("tarefa", t);	
				break;
			}
		}		

		return "update_tarefa";	
	}		

	@PostMapping("/update_tarefa/update_t")
	public String update(HttpSession session, Tarefa tarefa){
		Card c = (Card) session.getAttribute("card");	
         
      /*  for(Tarefa t : c.getTarefas()) {
			if(t.getNome().equals(tarefa.getNome())) {			
				c.getTarefas().set(c.getTarefas().indexOf(tarefa), tarefa);			
				break;
			}
		}*/
        
    	cardRep.save(c);
		return "redirect:/minhas_tarefas";
	}

	@RequestMapping("/minhas_tarefas")
	public String listaTarefas(Model model, HttpSession session) {
		Card c = (Card) session.getAttribute("card");		
       
		model.addAttribute("tarefas", c.getTarefas());
		return "card";
	}

	public List<Tarefa> getTarefas() {
		return tarefas;
	}

	public void setTarefas(List<Tarefa> tarefas) {
		this.tarefas = tarefas;
	}



}
