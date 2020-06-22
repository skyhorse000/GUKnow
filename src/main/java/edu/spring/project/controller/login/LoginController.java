package edu.spring.project.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.spring.project.domain.BoardVO;
import edu.spring.project.domain.MembershipVO;
import edu.spring.project.service.BoardService;
import edu.spring.project.service.MembershipService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private MembershipService membershipService;
	
	@Autowired
	private BoardService boardService;

//	@RequestMapping(value = "/login")
//	public ModelAndView home(ModelAndView mv) throws Exception {
//		logger.info("ModelAndView로 불러옴", mv);
//		
//		mv.setViewName("/login/login");
//		return mv;
//	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(String url, Model model) { // view ȣ�� (login.jsp)
		logger.info("loginGet() 호출");
		logger.info("url : " + url); // 이전 경로(로그인을 위해 왔던)의 값 출력
		model.addAttribute("targetUrl", url); // login.jsp에 url 정보 전송
	}

	@RequestMapping(value = "/login-post", method = RequestMethod.POST)
	public void loginPost(MembershipVO vo, Model model) { // DB�� vo ����
		logger.info("loginPost() 호출");
		logger.info("vo 호출 : = " + vo.toString());
		MembershipVO result = membershipService.loginCheck(vo);
		// 아이디 비밀번호가 일치 : result != null
		// 아이디 비밀번호가 일치하지 않음 : result == null
		logger.info("result : " + result);
		model.addAttribute("login_result", result);
		logger.info("model.addAttribute(\"login_result\", result) --- 보내기");
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest req) {
		logger.info("logout() 호출");

		HttpSession session = req.getSession();
		session.removeAttribute("username");
		session.invalidate();

		// 로그아웃 누르면 메인 페이지로 이동
		return "redirect:/home";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGet(String url, Model model) {
		logger.info("registerGet() 호출");
		logger.info("url : " + url);
		model.addAttribute("targetUrl", url);
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(MembershipVO vo, RedirectAttributes reAttr) {
		// RedirectAttributes
		// - ���� ��ġ�� �Ӽ��� �����ϴ� ��ü

		logger.info("registerPOST() 호출");
		logger.info("email : " + vo.getEmail());
		logger.info("pw : " + vo.getPassword());
		logger.info("name : " + vo.getUsername());
		logger.info("gender : " + vo.getGender());
		int result = membershipService.create(vo);
		if (result == 1) { // DB insert ����
			reAttr.addFlashAttribute("insert_result", "success");
		} else { // DB insert ����
			reAttr.addFlashAttribute("insert_result", "fail");
		}
		return "redirect:/home";
	}

	// findpw 페이지 이동
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findpwGet(String url, Model model) {
		logger.info("findpwGet() 호출");
		logger.info("url : " + url);
		model.addAttribute("targetUrl", url);
	}
	
	// 로그인창 안에 있는 문의 하기는 board로 불러 와야함
	@RequestMapping(value = "/board_register", method = RequestMethod.POST)
	public String board_registerPOST(BoardVO vo, RedirectAttributes reAttr) {
		// RedirectAttributes
		// - 재경로 위치에 속성을 전송하는 객체
		logger.info("board_registerPOST() 호출");
		logger.info("제목 : " + vo.getTitle());
		logger.info("본문 : " + vo.getContent());
		logger.info("아이디 : " + vo.getUsername());
		int result = boardService.create(vo);
		if (result == 1) { // DB insert 성공
			reAttr.addFlashAttribute("insert_result", "success");
		} else { // DB insert 실패
			reAttr.addFlashAttribute("insert_result", "fail");
		}

		return "redirect:/board/list"; // /board/list 경로로 이동(get방식)
	}

}
