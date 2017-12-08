package br.com.ytb.controller;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ytb.model.Usuario;
import br.com.ytb.repository.mongo.UserRepositorio;

@Controller
public class LoginController {
	
	
	@Autowired
	private UserRepositorio userRep;	
	
	@PostMapping("logar")
	public String autenticar(Usuario user, HttpSession session){	
		Usuario usuario = userRep.autenticar(user.getUserName(), user.getSenha());
		
		if(usuario != null){
			session.setAttribute("logado", usuario);			
			return "forward:/";
		}		
	  return "redirect:/login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("logado");
		session.invalidate();
		return "redirect:/login";
		
	}
	
	
}
