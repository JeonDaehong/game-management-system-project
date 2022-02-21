package com.portfolio.gms.board.controller;

import java.io.File;
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

import com.portfolio.gms.board.dto.BoardDto;
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
	public ModelAndView boardList() throws Exception {
		
		ModelAndView mv = new ModelAndView("boards/boardList");
		
		List<BoardDto> boardList = boardService.boardList();
		
		mv.addObject("boardList", boardList);
		
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
	
	
	// 게시글 클릭 시 해당 게시글로 이동
	@RequestMapping(value="/boardInfo", method=RequestMethod.GET)
	public ModelAndView boardInfo(@RequestParam("num") int num) throws Exception {
		
		ModelAndView mv = new ModelAndView("boards/boardInfo");
		
		// 조회수 Up
		boardService.readCountUpdate(num);
		
		mv.addObject("boardDto", boardService.boardInfo(num));
		
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
		
		// 이미지 파일 삭제
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + multipartRequest.getParameter("fileName"));
		f.delete();
		
		// DB에서 게시글 삭제
		boardService.boardDelete(Integer.parseInt(multipartRequest.getParameter("num")));
		
		String body = "<script>";
			   body += "alert('게시글이 성공적으로 삭제 되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/boards/boardList';";
			   body += "</script>";

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
}
