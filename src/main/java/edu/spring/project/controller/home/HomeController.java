package edu.spring.project.controller.home;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project.controller.boardPageutil.PageCriteria;
import edu.spring.project.controller.boardPageutil.PageMaker;
import edu.spring.project.domain.BoardVO;
import edu.spring.project.service.BoardService;

@Controller
//@RequestMapping(value = "/home")
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

//   @RequestMapping(value = "home")
//   public ModelAndView home(ModelAndView mv, Integer page, Integer perPage) throws Exception {
//      logger.info("Main 페이지로 이동", mv);
//
//      mv.setViewName("home/home");
//      return mv;
//   }

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, Integer page, Integer perPage) {
		logger.info("home 이동");
		logger.info("/home/home 호출");

		// Paging 처리(default 사용하지 않고, 하드 코딩으로 삽입)
		PageCriteria c = new PageCriteria();
		c.setPage(1); // 1페이지에
		c.setNumsPerPage(3); // 3개씩 출력

		// boardList 이름으로 list 보내기
		List<BoardVO> list = boardService.read(c);
		model.addAttribute("boardList", list);

		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(boardService.getTotalNumsOfRecords());
		maker.setPageData();
		model.addAttribute("pageMaker", maker);

		return "home/home";

	} // end list()

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(int bno, Model model, @ModelAttribute("criteria") PageCriteria criteria) {
		logger.info("detail() 호출 : bno = " + bno);
		logger.info("detail() 호출 : criteria = " + criteria);
		BoardVO vo = boardService.read(bno);
//      model.addAttribute("boardVO", vo);
		return "redirect:/board/detail?page=" + criteria.getPage() + "&bno=" + bno;
	}

}
