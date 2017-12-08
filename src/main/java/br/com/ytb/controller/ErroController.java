package br.com.ytb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErroController implements ErrorController{		
	@RequestMapping("/error")
	public String redirectErro(HttpServletRequest req, Model model){
		int codErro = getCodErro(req);
		String msg = "";
		
		if(codErro == 400){
		   msg = "Erro: 400 - Solicitação inválida!";
		}
		
		else if(codErro == 404){
		   msg = "Erro: 404 - Página não encontrada!";
		}
		
		else if(codErro == 500){
		   msg = "Erro: 500 - Falha interna no servidor!";
		}			
		model.addAttribute("error", msg);
		return "error";
	}
	
	private int getCodErro(HttpServletRequest req) {
		return (Integer) req.getAttribute("javax.servlet.error.status_code");
	}
	
	@Override
	public String getErrorPath() {		
		return "";
	}

}
