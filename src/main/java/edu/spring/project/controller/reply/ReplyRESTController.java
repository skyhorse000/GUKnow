package edu.spring.project.controller.reply;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project.domain.ReplyVO;
import edu.spring.project.service.ReplyService;

//RequestMapping
///replies (POST) : 댓글 추가(insert)
///replies/all/숫자 (GET) : 해당 글번호(bno)의 모든 댓글 검색(select)
///replies/숫자 (PUT) : 해당 댓글 번호(rno)의 내용을 수정(update)
///replies/숫자 (DELETE) : 해당 댓글 번호(rno)의 댓글 삭제(delete)

@RestController
@RequestMapping(value = "/replies")
public class ReplyRESTController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyRESTController.class);

	@Autowired
	private ReplyService replyService;

//	// 댓글 입력
//	@RequestMapping(value = "/insert")
//	public void insert(@ModelAttribute ReplyVO vo, HttpSession session) {
//		String username = (String) session.getAttribute("username");
//		vo.setReplyname(username);
//		logger.info(vo.toString());
//		try {
//			int result = replyService.create(vo);
////			return new ResponseEntity<Integer>(result, HttpStatus.OK);			
//		} catch (Exception e) {
////			return new ResponseEntity<Integer>(0, HttpStatus.OK);
//		}
//	}
//
//	// 댓글 목록(@RestController방식 : view(화면)을 리턴)
//	@RequestMapping(value = "/list")
//	public ModelAndView list(@RequestParam int bno, ModelAndView mav) {
//		List<ReplyVO> list = replyService.read(bno);
//		// 뷰이름 지정
//		mav.setViewName("board/replyList");
//		// 뷰에 전달할 데이터 지정
//		mav.addObject("list", list);
//		// replyList.jsp로 포워딩
//		return mav;
//	}
//	
//	
//	// 댓글 목록(@RestController Json방식으로 처리 : 데이터를 리턴)
//	@RequestMapping(value = "/listJson")
//	@ResponseBody // 리턴 데이터를 json 으로 변환
//	public List<ReplyVO> listJson(@RequestParam int bno){
//		List<ReplyVO> list = replyService.read(bno);
//		return list;
//	}

	// 댓글 삽입
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Integer> createReply(@RequestBody ReplyVO vo) throws Exception {
		// @RequestBody
		// - 클라이언트에서 전송받은 json 데이터를 자바 객체로 변환해주는 annotation
		// logger.info(vo.getBno() +"");
		logger.info("createReply() 실행");
		logger.info("댓글 입력값 출력 : " + vo.toString());

		int result = replyService.create(vo);
		logger.info("result 리턴 값 : " + result);

		return new ResponseEntity<Integer>(result, HttpStatus.OK);

	}

	// 댓글 전체 불러 오기
	@RequestMapping(value = "/all/{no}", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> readReplies(@PathVariable("no") int bno) {
		List<ReplyVO> list = replyService.read(bno);
		return new ResponseEntity<List<ReplyVO>>(list, HttpStatus.OK);
	}

	// 댓글 수정
	@RequestMapping(value = "/{no}", method = RequestMethod.PUT)
	public ResponseEntity<String> updateReply(@PathVariable("no") int rno, @RequestBody ReplyVO vo) {
		logger.info("updateReply() 실행");
		vo.setRno(rno);
		logger.info("updateReply() 저장된 rno 번호 : " + vo.getRno());
		logger.info("댓글 업데이트 내용 출력 : " + vo.toString());
		int result = replyService.update(vo);
		logger.info("result 리턴 값 : " + result);
		ResponseEntity<String> entity = null;
		if (result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}

	@RequestMapping(value = "/{no}", method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteReply(@PathVariable("no") int rno, @RequestBody ReplyVO vo) {
		logger.info("deleteReply() 실행");
		logger.info("삭제할 Bno : " + vo.getBno() + " 삭제할 Rno : " + vo.getRno());
		try {
			replyService.delete(rno, vo.getBno());
			return new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<String>("fail", HttpStatus.OK);
		}

	}
}
