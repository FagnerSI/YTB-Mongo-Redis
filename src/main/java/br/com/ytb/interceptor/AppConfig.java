package br.com.ytb.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class AppConfig extends WebMvcConfigurerAdapter{

		@Autowired
		private Autorizar interceptor;

		@Override
		public void addInterceptors(InterceptorRegistry registry)	{	
			registry.addInterceptor(interceptor).addPathPatterns("/**");
		}
	
}
