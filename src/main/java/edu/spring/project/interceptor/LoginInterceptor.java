package edu.spring.project.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import edu.spring.project.domain.MembershipVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	// controller로 보내기 전에 처리하는 인터셉터
	// 반환이 false라면 controller로 요청을 안함
	// 매개변수 Object는 핸들러 정보를 의미한다. ( RequestMapping , DefaultServletHandler )
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("===== preHandle 호출");
		// targetUrl이 요청 매개변수(request parameter)가 있는 경우는
		// 세션에 그 정보를 저장
		String url = request.getParameter("targetUrl");
		if (url != null && url != "") {
			request.getSession().setAttribute("dest", url);
		}

		return true;
	}

	// controller의 handler가 끝나면 처리됨
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("===== postHandle 호출");
		// Model 객체의 login_result 속성을 확인
		// null이 아니면(로그인 성공) session 객체에 login_id 속성 추가, 페이지 이동
		// null이면(로그인 실패) 메인 페이지로 이동

		// MemberVO 객체 확인
		MembershipVO vo = (MembershipVO) modelAndView.getModel().get("login_result");
		logger.info("vo 객체값 : " + vo);
		if (vo != null) {
			logger.info("postHandle 성공 : [ " + "email : " + vo.getEmail() + ", username : " + vo.getUsername() + " ]");
			HttpSession session = request.getSession();
			session.setAttribute("username", vo.getUsername()); // 세션에 유저 이름 속성 추가
//			response.sendRedirect("/ex04"); // home.jsp�� �̵�

			String dest = (String) session.getAttribute("dest");
			// 세션에서 목적 url 가져오기
			if (dest != null) {
				response.sendRedirect(dest);
			} else {
				session.setAttribute("login_ok", "ok");
				response.sendRedirect("/project/home");
			}
		} else {
			logger.info("postHandle 실패");
			logger.info("로그인 실패");
			HttpSession session = request.getSession();
			session.setAttribute("login_fail", "fail");
			response.sendRedirect("/project/login/login");
		}

	}

	// view까지 처리가 끝난 후에 처리됨
	// * afterCompletion
	// DispatcherServlet�� ���ؼ� ȭ�� ó��(view, jsp)�� ���� �Ŀ�
	// �ؾ��� ��ɵ��� �ۼ�
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("===== afterCompletion 호출");
		super.afterCompletion(request, response, handler, ex);
	}
	
	
}
