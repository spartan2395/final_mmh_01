package com.idea.mmh.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.idea.mmh.register.dto.MemberDto;


public class LoginInterceptor implements HandlerInterceptor{

   private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
   
   @Override
   public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
         throws Exception {
	   logger.info("[interceptor] : afterCompletion");
      // TODO Auto-generated method stub
   }
   
   @Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {
	   logger.info("[interceptor] : postHandle");
      // TODO Auto-generated method stub
   }
  
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      // TODO Auto-generated method stub
      logger.info("[requestMethod] : " + request.getMethod());
      logger.info("[requestURI] : "+ request.getRequestURI());
      
      HttpSession session = request.getSession();
      MemberDto user = (MemberDto) session.getAttribute("user");	//세션 user 넣어주고
      
      if(request.getRequestURI().endsWith("login")) {
         
         if(user == null) return true;
//         else response.sendRedirect("/dashboard");
         
      } 
      else if(request.getRequestURI().contains("/loginform.do"))return true;
      else if(request.getRequestURI().contains("/loginajax.do"))return true;
      else if(request.getSession().getAttribute("login") != null)return true;
      else if(request.getRequestURI().contains("/index.do"))return true;
      else if(request.getRequestURI().contains("/notice.do"))return true;
      
      else if(request.getRequestURI().endsWith("idsearch")) return true;
      else if(request.getRequestURI().endsWith("nickcheck")) return true;
      else if(request.getRequestURI().endsWith("idcheck")) return true;
      else if(request.getRequestURI().endsWith("pwmodify")) return true;
      else if(request.getRequestURI().endsWith("signup")) return true;
      else if(request.getRequestURI().endsWith("mabout")) return true;
      else if(request.getRequestURI().endsWith("emailAuthCheck")) return true;
      else if(request.getRequestURI().endsWith("smscheck")) return true;
      else if(request.getRequestURI().endsWith("kakaologin")) return true;
      else if(request.getRequestURI().endsWith("kakaologout")) return true;
      else if(request.getRequestURI().endsWith("kakaoout")) return true;
      else if(request.getRequestURI().endsWith("kakaosignup")) return true;
      else if(request.getRequestURI().endsWith("test")) return true;
      else if(request.getRequestURI().endsWith("map")) return true;
      else if(request.getRequestURI().endsWith("footer")) return true;
      else if(request.getRequestURI().endsWith("header")) return true;
      else if(request.getRequestURI().endsWith("wboard")) return true;
      else if(request.getRequestURI().endsWith("summerwrite")) return true;
      else if(request.getRequestURI().endsWith("wDelete")) return true;
      
      else if(request.getRequestURI().endsWith("map")) return true;
      else if(request.getRequestURI().endsWith("footer")) return true;
      else if(request.getRequestURI().endsWith("header")) return true;
      else if(request.getRequestURI().endsWith("wboard")) return true;
      else if(request.getRequestURI().endsWith("wSelectOne")) return true;
      else if(request.getRequestURI().endsWith(".js")) return true;
      else if(request.getRequestURI().endsWith(".css")) return true;
      else if(request.getRequestURI().endsWith(".jpg")) return true;
      else if(request.getRequestURI().endsWith(".jpeg")) return true;
      else if(request.getRequestURI().endsWith(".png")) return true;
      else if(request.getRequestURI().endsWith(".gif")) return true;
      else if(request.getRequestURI().endsWith(".svg")) return true;
      
      else if(request.getRequestURI().endsWith("pagechange")) return true;
      else if(request.getRequestURI().endsWith("crwl")) return true;
      else {
         
//         if(user == null) response.sendRedirect("/dashboard/login");
//         else 
        	 return true;
         
      }
      
      return false;
   }
   
   
}