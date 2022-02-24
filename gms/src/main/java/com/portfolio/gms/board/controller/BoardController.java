package com.portfolio.gms.board.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;
import com.portfolio.gms.board.service.BoardService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
@RequestMapping("boards")
public class BoardController {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ImageBoardService imageBoardService;

	// 게시판 리스트 불러오기
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	public ModelAndView boardList(@RequestParam(name = "onePageViewCount"  , defaultValue = "10")    int onePageViewCount,
			   					  @RequestParam(name = "currentPageNumber" , defaultValue = "1")     int currentPageNumber) throws Exception {
		
		ModelAndView mv = new ModelAndView("boards/boardList");
		
		// 페이지의 시작 게시글 인덱스
		int startBoardIdx = (currentPageNumber -1) * onePageViewCount;
		
		// 관련 정보 Map 생성 ( 한페이지에 보여줄 게시글 숫자 , 시작페이지의 인덱스 ) 
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		searchInfo.put("onePageViewCount", onePageViewCount);
		searchInfo.put("startBoardIdx", startBoardIdx);
		
		// DB에서 게시글 받아오기
		List<BoardDto> boardList = boardService.boardList(searchInfo);
		
		// 전체페이지 개수 = 전체게시글 수 / 한페이지에서 보여지는 글수
		int totalBoardCount = boardService.getAllBoardCount();
		int addPage = totalBoardCount % onePageViewCount == 0 ? 0 : 1;
		int totalPageCount = totalBoardCount / onePageViewCount + addPage;
		
		// 시작페이지
		int startPage = 1;
		
		if (currentPageNumber % 10 == 0) startPage = (currentPageNumber / 10 - 1) * 10 + 1;
		else 							 startPage = (currentPageNumber / 10) * 10 + 1;	
		
		// 끝페이지
		int endPage = startPage + 9;
		
		// 끝페이지가 전체 페이지 개수보다 크다면 
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		// 게시물이 한페이지에 보여지는 것보다 작다면
		if (onePageViewCount > totalBoardCount) {
			startPage = 1;
			endPage = 0;
		}
		
		if (totalBoardCount < 10 && totalBoardCount > 0) {
			endPage = 1;
		}
		
		mv.addObject("startPage"         , startPage);
		mv.addObject("endPage"           , endPage);
		mv.addObject("totalBoardCount"   , totalBoardCount);
		mv.addObject("onePageViewCount"  , onePageViewCount);
		mv.addObject("currentPageNumber" , currentPageNumber);
		
		// 게시글 목록에 보여지는 글 내용
		for (BoardDto boardDto : boardList) {
			String cutContent = "";
			if (boardDto.getContent().length() > 150) {
				cutContent = boardDto.getContent().substring(0, 150);
				cutContent += ". . .";
				boardDto.setCutContent(cutContent);
			} else {
				cutContent = boardDto.getContent().substring(0, boardDto.getContent().length());
				boardDto.setCutContent(cutContent);
			}
		}
		
		mv.addObject("boardList", boardList);
		
		// Side Bar - 인기 이미지
		List<ImageBoardDto> popularImgList =  imageBoardService.popularImgList();
		
		int endPopularImg = 0;
		
		if (popularImgList != null) {
			
			if (popularImgList.size() > 5) {
				endPopularImg = 5;
			} else {
				endPopularImg = popularImgList.size();
			}
			
		}
				
		mv.addObject("endPopularImg", endPopularImg);
		mv.addObject("popularImgList", popularImgList);
		
		return mv;
	}
	
	
	// 게시글 작성 페이지로 이동
	@RequestMapping(value="/boardWrite", method=RequestMethod.GET)
	public ModelAndView boardWrite() throws Exception {
		return new ModelAndView("boards/boardWrite");
	}
	
	
	// 게시글 작성
	@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
	public ResponseEntity<Object> boardWrite(MultipartHttpServletRequest multipartRequest, 
												HttpServletResponse response) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		BoardDto boardDto = new BoardDto();
		
		Iterator<String> file = multipartRequest.getFileNames();
		
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if(!uploadFile.getOriginalFilename().isEmpty()) {
				
				// 랜덤 이름
				UUID uuid = UUID.randomUUID();
				String uploadFileName = uuid.toString() + "__" + uploadFile.getOriginalFilename();
				
				// 이미지 업로드
				File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + uploadFileName);
				uploadFile.transferTo(f);
				
				// DB로 이미지 이름 넣기
				boardDto.setFileName(uploadFileName);
				
			}
		
		}
		
		boardDto.setWriter(multipartRequest.getParameter("writer"));
		boardDto.setSubject(multipartRequest.getParameter("subject"));
		boardDto.setContent(multipartRequest.getParameter("content"));
		
		boardService.addBoard(boardDto);
		
		String body = "<script>";
			   body += "alert('게시글이 성공적으로 등록되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/boards/boardList';";
			   body += "</script>";
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 게시글 클릭 시, 해당 게시글로 이동 */
	@RequestMapping(value="/boardInfo", method=RequestMethod.GET)
	public ModelAndView boardInfo(@RequestParam("num") int num,
								  @RequestParam(name = "onePageViewCount"  , defaultValue = "10")    int onePageViewCount,
								  @RequestParam(name = "currentPageNumber" , defaultValue = "1")     int currentPageNumber) throws Exception {
		
		ModelAndView mv = new ModelAndView("boards/boardInfo");
		
		/* 조회수 증가 */
		boardService.readCountUpdate(num);
		
		/* 해당 게시글 관련 Dto 불러오기 */
		mv.addObject("boardDto", boardService.boardInfo(num));
		
		// 페이지의 시작 게시글 인덱스
		int startBoardIdx = (currentPageNumber -1) * onePageViewCount;
		
		// 관련 정보 Map 생성 ( 한페이지에 보여줄 게시글 숫자 , 시작페이지의 인덱스 ) 
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		searchInfo.put("onePageViewCount", onePageViewCount);
		searchInfo.put("startBoardIdx", startBoardIdx);
		searchInfo.put("boardNum", num);
		
		/* 해당 게시글의 댓글 불러오기 */
		List<BoardReplyDto> replyList = boardService.getReply(searchInfo);
		
		// 전체페이지 개수 = 전체게시글 수 / 한페이지에서 보여지는 글수
		int totalBoardCount = boardService.getReplyCount(num);
		int addPage = totalBoardCount % onePageViewCount == 0 ? 0 : 1;
		int totalPageCount = totalBoardCount / onePageViewCount + addPage;
		
		// 시작페이지
		int startPage = 1;
		
		if (currentPageNumber % 10 == 0) startPage = (currentPageNumber / 10 - 1) * 10 + 1;
		else 							 startPage = (currentPageNumber / 10) * 10 + 1;	
		
		// 끝페이지
		int endPage = startPage + 9;
		
		// 끝페이지가 전체 페이지 개수보다 크다면 
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		// 게시물이 한페이지에 보여지는 것보다 작다면
		if (onePageViewCount > totalBoardCount) {
			startPage = 1;
			endPage = 0;
		}
		
		if (totalBoardCount < 10 && totalBoardCount > 0) {
			endPage = 1;
		}
		
		mv.addObject("startPage"         , startPage);
		mv.addObject("endPage"           , endPage);
		mv.addObject("totalBoardCount"   , totalBoardCount);
		mv.addObject("onePageViewCount"  , onePageViewCount);
		mv.addObject("currentPageNumber" , currentPageNumber);
		
		mv.addObject("replyList", replyList);
		
		/* Side Bar : 인기 이미지*/
		List<ImageBoardDto> popularImgList =  imageBoardService.popularImgList();
		
		int endPopularImg = 0;
		
		if (popularImgList != null) {
			
			if (popularImgList.size() > 5) {
				endPopularImg = 5;
			} else {
				endPopularImg = popularImgList.size();
			}
			
		}
				
		mv.addObject("endPopularImg", endPopularImg);
		mv.addObject("popularImgList", popularImgList);
		
		return mv;
	}
	
	
	// 게시글 수정 페이지로 이동
	@RequestMapping(value="/boardUpdate", method=RequestMethod.GET)
	public ModelAndView boardUpdate(@RequestParam("num") int num) throws Exception {
		ModelAndView mv = new ModelAndView("boards/boardUpdate");
		mv.addObject("boardDto", boardService.boardInfo(num));
		return mv;
	}
	
	
	// 게시글 수정
	@RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
	public ResponseEntity<Object> boardUpdate(@ModelAttribute BoardDto boardDto, HttpServletRequest request) throws Exception {
		
		boardService.boardUpdate(boardDto);
		
		String body = "<script>";
			   body += "alert('게시글이 성공적으로 수정 되었습니다.');";
			   body += " location.href='" + request.getContextPath() + "/boards/boardInfo?num=" + boardDto.getNum() + "';";
			   body += "</script>";
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	// 게시글 삭제 페이지로 이동
	@RequestMapping(value="/boardDelete", method=RequestMethod.GET)
	public ModelAndView boardDelete(@RequestParam("num") int num, @RequestParam("fileName") String fileName) throws Exception {
		ModelAndView mv = new ModelAndView("boards/boardDelete");
		mv.addObject("num", num);
		mv.addObject("fileName", fileName);
		return mv;
	}
	
	
	// 게시글 삭제
	@RequestMapping(value="/boardDelete", method=RequestMethod.POST)
	public ResponseEntity<Object> boardDelete(MultipartHttpServletRequest multipartRequest, 
												HttpServletResponse response) throws Exception {
		
		/* 서버에서 게시글과 관련 된 이미지 파일 삭제 */
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + multipartRequest.getParameter("fileName"));
		f.delete();
		
		/* DB에서 해당 게시글의 댓글들 전부 삭제 */
		boardService.deleteReplyforBoard(Integer.parseInt(multipartRequest.getParameter("num")));
		
		/* DB에서 게시글 삭제 */
		boardService.boardDelete(Integer.parseInt(multipartRequest.getParameter("num")));
		
		String body = "<script>";
			   body += "alert('게시글이 성공적으로 삭제 되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/boards/boardList';";
			   body += "</script>";

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	
	/* 댓글 입력 컨트롤러 */
	@RequestMapping(value="/addReply", method=RequestMethod.POST)
	public ResponseEntity<Object> addReply(@ModelAttribute BoardReplyDto boardReplyDto, HttpServletRequest request) throws Exception {
		
		/* 해당 게시글 댓글 카운트 증가 */
		boardService.commentCountUp(boardReplyDto.getBoardNum());
		
		/* DB에 댓글 정보 추가 */
		boardService.addReply(boardReplyDto);
		
		String body = "<script>";
			   body += "alert('댓글이 정상적으로 입력 되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/boards/boardInfo?num=" + boardReplyDto.getBoardNum() + "';";
			   body += "</script>";

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 댓글 삭제 컨트롤러 */
	@RequestMapping(value="/deleteReply", method=RequestMethod.GET)
	public ResponseEntity<Object> deleteReply(@RequestParam("num") int num, @RequestParam("boardNum") int boardNum , HttpServletRequest request) throws Exception {
		
		/* 해당 게시글 댓글 카운트 감소 */
		boardService.commentCountDown(boardNum);
		
		/* DB에서 댓글 정보 삭제 */
		boardService.deleteReply(num);
		
		String body = "<script>";
			   body += "alert('댓글을 삭제 하였습니다.');";
			   body += "location.href='" + request.getContextPath() + "/boards/boardInfo?num=" + boardNum + "';";
			   body += "</script>";
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
}
