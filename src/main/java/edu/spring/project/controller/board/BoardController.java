package edu.spring.project.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.spring.project.controller.boardPageutil.PageCriteria;
import edu.spring.project.controller.boardPageutil.PageMaker;
import edu.spring.project.domain.BoardVO;
import edu.spring.project.service.BoardService;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model, Integer page, Integer perPage) {
		logger.info("게시판 이동");
		logger.info("/board/list() 호출");

		// Paging 처리
		PageCriteria c = new PageCriteria();
		if (page != null) {
			c.setPage(page);
		}
		if (perPage != null) {
			c.setNumsPerPage(perPage);
		}

		// boardList 이름으로 list 보내기
		List<BoardVO> list = boardService.read(c);
		model.addAttribute("boardList", list);

		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(boardService.getTotalNumsOfRecords());
		maker.setPageData();
		model.addAttribute("pageMaker", maker);

	} // end list()

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() {
		logger.info("registerGET() 호출, register 창이동");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardVO vo, RedirectAttributes reAttr) {
		// RedirectAttributes
		// - 재경로 위치에 속성을 전송하는 객체
		logger.info("registerPOST() 호출");
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

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int bno, Model model, @ModelAttribute("criteria") PageCriteria criteria) {
		logger.info("detaill() 호출 : bno = " + bno);
		logger.info("detaill() 호출 : criteria = " + criteria);
		BoardVO vo = boardService.read(bno);
		model.addAttribute("boardVO", vo);

	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void update(int bno, Model model, @ModelAttribute("criteria") PageCriteria criteria) {
		BoardVO vo = boardService.read(bno);
		logger.info("update() 호출 bno = " + bno);
		logger.info("update() 호출 : regdate = " + vo.getRegdate());
		logger.info("update() 호출 : updatedate = " + vo.getUpdatedate());
		model.addAttribute("boardVO", vo);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePOST(BoardVO vo, PageCriteria criteria) {
		logger.info("updatePost() 호출 : bno = " + vo.getBno());
		logger.info("updatePost() 호출 : regdate = " + vo.getRegdate());
		logger.info("updatePost() 호출 : updatedate = " + vo.getUpdatedate());
		int result = boardService.update(vo);

		return "redirect:/board/list?page=" + criteria.getPage() + "&perPage=" + criteria.getNumsPerPage();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int bno) {
		logger.info("delete() 호출 : bno = " + bno);
		int result = boardService.delete(bno);
		return "redirect:/board/list";
	}
	
	// 보드 jsp 창에서 로그아웃 설정
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest req) {
		logger.info("logout() 호출");

		HttpSession session = req.getSession();
		session.removeAttribute("username");
		session.invalidate();

		// 로그아웃 누르면 메인 페이지로 이동
		return "redirect:/home";
	}

} // end BoardController
