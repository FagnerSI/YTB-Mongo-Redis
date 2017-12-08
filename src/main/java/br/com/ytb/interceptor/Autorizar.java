package br.com.ytb.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class Autorizar extends HandlerInterceptorAdapter {	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		String uri = request.getRequestURI();

		if((uri.startsWith("/login") || uri.startsWith("/logar")) || 
				(request.getSession().getAttribute("logado") != null));
		else if (request.getSession().getAttribute("logado") == null)
			response.sendRedirect("/login");
		else
			response.sendRedirect("/error");

		
		return true;
	}		

}
