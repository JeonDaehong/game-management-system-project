package com.portfolio.gms.imageBoard.controller;

import java.io.File;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
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

	// 이미지 리스트 가져오기
	@RequestMapping(value="/imageBoardList", method=RequestMethod.GET)
	public ModelAndView imageBoardList() throws Exception {
		return new ModelAndView("imageBoard/imageBoardList");
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
			
				File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + uploadFile.getOriginalFilename());	
				uploadFile.transferTo(f); 
				dbImageBoardDto.setSmallFileName(uploadFile.getOriginalFilename());
				
				uploadFile = multipartRequest.getFile(file.next());
				
				dbImageBoardDto.setBigFileName(uploadFile.getOriginalFilename());
			}
		
		}
		
		imageBoardService.insertImage(dbImageBoardDto);
		
		String body = "<script>";
			   body += "alert('성공적으로 등록되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/imageBoard/imageBoardList';";
			   body += "</script>";
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
}
