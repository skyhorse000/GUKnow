package edu.spring.project.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger =
			LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("=== preHandle �샇異�");
		// 濡쒓렇�씤 �긽�깭 : register 肄섑듃濡ㅻ윭 硫붿냼�뱶 �떎�뻾
		// 濡쒓렇�씤 �븞�맂 �긽�깭 : 濡쒓렇�씤 �뼇�떇(login)�쑝濡� redirect, 肄섑듃濡ㅻ윭 硫붿냼�뱶�뒗 �떎�뻾�븯吏� �븡�쓬
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if(username != null) { // 濡쒓렇�씤 �긽�깭
			logger.info("濡쒓렇�씤 �긽�깭 -> register() �떎�뻾");
			return true; // 肄섑듃濡ㅻ윭 硫붿냼�뱶 �떎�뻾
		} else { // 濡쒓렇�씤 �븞 �맂 �긽�깭
			logger.info("濡쒓렇�씤 �븞 �맂 �긽�깭 -> loginGet() �떎�뻾");
			
			// 濡쒓렇�씤 �꽦怨� �썑�뿉 redirect�맆 �럹�씠吏�瑜� �꽭�뀡�뿉 ���옣
			saveDestination(request);
			response.sendRedirect("../project/login/login");
			return false;
		}
	}

	private void saveDestination(HttpServletRequest request) {
		logger.info("saveDestination() �샇異�");
		
		// �쟾泥� �슂泥� 二쇱냼�뿉�꽌 荑쇰━ �뒪�듃留곸쓣 �젣�쇅�븳 遺�遺�
		String uri = request.getRequestURI();
		logger.info("�슂泥� URI : " + uri);
		
		// �쟾泥� �슂泥� 二쇱냼�뿉�꽌 荑쇰━ �뒪�듃留곷쭔 異붿텧
		String queryString = request.getQueryString();
		logger.info("荑쇰━ �뒪�듃留� : " + queryString);
		String url = "";
		if (queryString == null) {
			url = uri;
		} else {
			url = uri + "?" + queryString;
		}
		
		request.getSession().setAttribute("dest", url);
		
	}
}



















