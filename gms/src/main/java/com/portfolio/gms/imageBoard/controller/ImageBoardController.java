package com.portfolio.gms.imageBoard.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.service.GoodsService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.dto.ImageSuggestionDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
@RequestMapping("imageBoard")
public class ImageBoardController {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux
	
	@Autowired
	private ImageBoardService imageBoardService;
	
	@Autowired
	private GoodsService goodsService;
	

	// 이미지 리스트 가져오기
	@RequestMapping(value="/imageBoardList", method=RequestMethod.GET)
	public ModelAndView imageBoardList() throws Exception {
		ModelAndView mv = new ModelAndView("imageBoard/imageBoardList");
		
		/*
		 	최신 이미지로 최대 15개만 보여주기.
		 	end를 이미지 최대갯수, 혹은 14로 두어
		 	jsp파일로 넘기기
		*/
		int end = imageBoardService.imgCount();
		
		if (imageBoardService.imgCount() > 14) {
			end = 14;
		}
		
		mv.addObject("imgList", imageBoardService.imgList());
		mv.addObject("end", end);
		
		
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
		
		
		/* 사이드 바 - 인기 게임 리스트 */
		List<GoodsDto> sidePopularGoodsList = goodsService.popularGoodsList();
		
		int endSidePopularGoods = 0;
		
		if (sidePopularGoodsList != null) {
				
			if (sidePopularGoodsList.size() > 2) {
				endSidePopularGoods = 2;
			} else {
				endSidePopularGoods = sidePopularGoodsList.size();
			}
		}
			
		mv.addObject("endSidePopularGoods", endSidePopularGoods);
		mv.addObject("sidePopularGoodsList", sidePopularGoodsList);
		
		return mv;
	}
	
	// 이미지 등록 화면으로 이동
	@RequestMapping(value="/imageBoardWrite", method=RequestMethod.GET)
	public ModelAndView imageBoardWrite() throws Exception {
		return new ModelAndView("imageBoard/imageBoardWrite");
	}
	
	// 이미지 등록
	@RequestMapping(value="/imageBoardWrite", method=RequestMethod.POST)
	public ResponseEntity<Object> imageBoardWrite(MultipartHttpServletRequest multipartRequest, 
													HttpServletResponse response) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ImageBoardDto dbImageBoardDto = new ImageBoardDto();
		
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
				dbImageBoardDto.setFileName(uploadFileName);
				
			}
		
		}
		
		dbImageBoardDto.setMemberId(multipartRequest.getParameter("memberId"));
		dbImageBoardDto.setSubject(multipartRequest.getParameter("subject"));
		dbImageBoardDto.setContent(multipartRequest.getParameter("content"));
		
		imageBoardService.insertImage(dbImageBoardDto);
		
		String body = "<script>";
			   body += "alert('성공적으로 등록되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/imageBoard/imageBoardList';";
			   body += "</script>";
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	// 이미지 삭제
	@RequestMapping(value="/imageDelete", method=RequestMethod.POST)
	public ResponseEntity<Object> imageDelete(MultipartHttpServletRequest multipartRequest, 
												HttpServletResponse response) throws Exception {
		

		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String body = "";
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("fileName", multipartRequest.getParameter("fileName"));
		map.put("memberId", multipartRequest.getParameter("memberId"));
		
		ImageSuggestionDto imageSuggestionDto = new ImageSuggestionDto();
		
		if (imageBoardService.imgMemberCheck(map)) {
			
			File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + multipartRequest.getParameter("fileName"));
			f.delete();
			
			imageBoardService.imgDelete(multipartRequest.getParameter("fileName"));
			
			imageSuggestionDto.setFileName(multipartRequest.getParameter("fileName"));
			imageSuggestionDto.setMemberId("a");
			imageBoardService.imgSuggestionDelete(imageSuggestionDto);
			
			body = "<script>";
			body += "alert('성공적으로 삭제 되었습니다.');";
			body += " location.href='" + multipartRequest.getContextPath() + "/imageBoard/imageBoardList';";
			body += "</script>";
			
		} else if (multipartRequest.getParameter("memberId").equals("admin")) {
			
			File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + multipartRequest.getParameter("fileName"));
			f.delete();
			
			imageBoardService.imgDelete(multipartRequest.getParameter("fileName"));
			
			imageSuggestionDto.setFileName(multipartRequest.getParameter("fileName"));
			imageSuggestionDto.setMemberId("a");
			imageBoardService.imgSuggestionDelete(imageSuggestionDto);
			
			body = "<script>";
			body += "alert('성공적으로 삭제 되었습니다.');";
			body += " location.href='" + multipartRequest.getContextPath() + "/imageBoard/imageBoardList';";
			body += "</script>";
				   
		} else {
			
			body = "<script>";
			body += "alert('Admin계정이 아니라면, 자신이 올린 이미지만 삭제 할 수 있습니다.');";
			body += " location.href='" + multipartRequest.getContextPath() + "/imageBoard/imageBoardList';";
			body += "</script>";
		}
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
	
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	// 이미지 추천하기
	@RequestMapping(value="/imageSuggestion", method=RequestMethod.GET)
	public ResponseEntity<Object> imageSuggestion (@RequestParam("memberId") String memberId, @RequestParam("fileName") String fileName, HttpServletRequest request) throws Exception {
		
		String body = "";
		ImageSuggestionDto imageSuggestionDto = new ImageSuggestionDto();
		imageSuggestionDto.setMemberId(memberId);
		imageSuggestionDto.setFileName(fileName);
		
		if (imageBoardService.imgSuggestionCheck(imageSuggestionDto)) {
			
			imageBoardService.readCountUpdate(fileName);
			
			body = "<script>";
			body += "alert('추천을 완료하였습니다 :D (추천은 인기 이미지 등록에 영향을 줍니다.)');";
			body += "location.href='" + request.getContextPath() + "/imageBoard/imageBoardList';";
			body += "</script>";
		} else {
			body = "<script>";
			body += "alert('이미 추천하신 이미지입니다.');";
			body += "location.href='" + request.getContextPath() + "/imageBoard/imageBoardList';";
			body += "</script>";
		}
		
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
	
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
}
