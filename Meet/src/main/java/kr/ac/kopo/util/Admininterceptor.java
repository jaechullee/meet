package kr.ac.kopo.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Admininterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception{
		
		HttpSession session = request.getSession();
		
		if(session == null || session.getAttribute("user") == null) {
			response.sendRedirect("/login");
			
			return false;
		}else if(!session.getAttribute("user").equals("admin")) {
			response.sendRedirect("/book/list");
			
			return false;
		}
		return true;
	}
}
