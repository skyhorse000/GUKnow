package edu.spring.project.controller.membership;

import java.util.List;

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

import edu.spring.project.domain.MembershipVO;
import edu.spring.project.service.MembershipService;

@Controller
@RequestMapping(value = "/member")
public class MembershipController {
	private static final Logger logger = LoggerFactory.getLogger(MembershipController.class);

	@Autowired
	private MembershipService membershipService;

	// 메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainGet(String url, Model model) {
		logger.info("mainGet() 호출");
		logger.info("url : " + url);
		model.addAttribute("targetUrl", url);
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(String url, Model model) { // view ȣ�� (login.jsp)
		logger.info("loginGet() 호출");
		logger.info("url : " + url); // 이전 경로(로그인을 위해 왔던)의 값 출력
		model.addAttribute("targetUrl", url); // login.jsp에 url 정보 전송
	}

	/*
	 * @RequestMapping(value = "/login-post", method= RequestMethod.POST) public
	 * void loginPost(MembershipVO vo, Model model) { // DB�� vo ����
	 * logger.info("loginPost() 호출"); MembershipVO result =
	 * membershipService.loginCheck(vo); // 아이디 비밀번호가 일치 : result != null // 아이디
	 * 비밀번호가 일치하지 않음 : result == null logger.info("result : " + result);
	 * model.addAttribute("login_result", result); }
	 */

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest req) {
		logger.info("logout() 호출");

		HttpSession session = req.getSession();
		session.removeAttribute("login_id");
		session.invalidate();

		return "redirect:/member/main";
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

		return "redirect:/member/main";
	}

	// findpw 페이지 이동
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findpwGet(String url, Model model) {
		logger.info("findpwGet() 호출");
		logger.info("url : " + url);
		model.addAttribute("targetUrl", url);
	}

}
