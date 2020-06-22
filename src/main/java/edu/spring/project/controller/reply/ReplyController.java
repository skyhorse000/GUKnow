package edu.spring.project.controller.reply;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project.service.ReplyService;

@Controller
@RequestMapping(value = "/reply")
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@Autowired
	private ReplyService replyservice;

	@RequestMapping(value = "/reply", method = RequestMethod.GET)
	public void reply() {
		logger.info("reply() 호출");
	}

//	@RequestMapping(value = "/new", consumes = "application/json", produces = {
//			MediaType.TEXT_PLAIN_VALUE }, method = RequestMethod.POST)
//	public ResponseEntity<String> create(@RequestBody ReplyVO vo) throws Exception {
//		logger.info("new 호출");
//		logger.info("ReplyVO : " + vo);
//
//		int insertCount = replyservice.create(vo);
//		logger.info("Reply insertCount : " + insertCount);
//
//		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
//				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//		// 삼항연산자
//	}

//	@RequestMapping(value = "/pages/{bno}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
//			MediaType.APPLICATION_JSON_UTF8_VALUE }, method = RequestMethod.GET)
//	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("page") int page, @PathVariable("bno") int bno) {
//		logger.info("pages() 호출");
//		PageCriteria cri = new PageCriteria(page, 10);
//		logger.info("cri = " + cri);
//
//		return new ResponseEntity<>(replyservice.read(bno), HttpStatus.OK);
//	}

//	@RequestMapping(value = "/{rno}", produces = { MediaType.APPLICATION_XML_VALUE,
//			MediaType.APPLICATION_JSON_UTF8_VALUE }, method = RequestMethod.GET)
//	public ResponseEntity<ReplyVO> get(@PathVariable("rno") int rno) {
//		logger.info("get() 호출" + rno);
//
//		return new ResponseEntity<>(replyservice.get(rno), HttpStatus.OK);
//	}

//	@RequestMapping(value="/delete", method=RequestMethod.POST)
//	public String delete(int rno, int bno) throws Exception {
//		logger.info("delete() 호출 : rno = " + rno);
//		int result = replyservice.delete(rno, bno);
//		return "redirect:/board/list";
//	}

}
