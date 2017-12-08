package br.com.ytb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ytb.model.Usuario;
import br.com.ytb.repository.mongo.UserRepositorio;

@Controller
public class UserController {

	@Autowired
	private UserRepositorio userdRep;
	
	@PostMapping("/criar_conta")
	public String create(Usuario user) {
		userdRep.save(user);  	
		return "forward:/login";
	}

	@RequestMapping("/remover/{id}")
	public String remove(@PathVariable("id") Usuario user, HttpSession session) {				
		
		return "redirect:/";
	}
	
	@GetMapping("/update_user")
	public String update(Model model, HttpSession seesion) {
		return "update_user";	
	}	

	@PostMapping("/update_user/update_u")
	public String update(Usuario user, HttpSession session){
		
		userdRep.save(user);
		session.setAttribute("logado", user);
		return "redirect:/meus_cards";
	}

}
