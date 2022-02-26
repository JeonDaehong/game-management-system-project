package com.portfolio.gms.admin.goods.controller;

import java.io.File;
import java.util.Iterator;
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

import com.portfolio.gms.admin.goods.service.AdminGoodsService;
import com.portfolio.gms.goods.dto.GoodsDto;

@Controller
@RequestMapping("adminGoods")
public class AdminGoodsController {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux
	
	@Autowired
	private AdminGoodsService adminGoodsService;
	
	/* 상품 등록 페이지로 이동 */
	@RequestMapping(value="/goodsRegistration", method=RequestMethod.GET)
	public ModelAndView goodsRegistration() throws Exception {
		return new ModelAndView("adminGoods/goodsRegistration");
	}
	
	/* 상품 등록 */
	@RequestMapping(value="/goodsRegistration", method=RequestMethod.POST)
	public ResponseEntity<Object> goodsRegistration(MultipartHttpServletRequest multipartRequest, 
													HttpServletResponse response) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		GoodsDto dbGoodsDto = new GoodsDto();
		
		Iterator<String> file = multipartRequest.getFileNames();
		
		for (int i=0; i<4; i++) {
		
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
					if ( i == 0) {
						dbGoodsDto.setFileName(uploadFileName);
					} else if ( i == 1 ) {
						dbGoodsDto.setSecondFileName(uploadFileName);
					} else if ( i == 2 ) {
						dbGoodsDto.setThirdFileName(uploadFileName);
					} else {
						dbGoodsDto.setFourthFileName(uploadFileName);
					}
				}
			}
		}
		
		dbGoodsDto.setGoodsName(multipartRequest.getParameter("goodsName"));
		dbGoodsDto.setGoodsType(multipartRequest.getParameter("goodsType"));
		dbGoodsDto.setGoodsGenre(multipartRequest.getParameter("goodsGenre"));
		dbGoodsDto.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		dbGoodsDto.setDiscountRate(Integer.parseInt(multipartRequest.getParameter("discountRate")));
		dbGoodsDto.setCreCompany(multipartRequest.getParameter("creCompany"));
		dbGoodsDto.setCountry(multipartRequest.getParameter("country"));
		dbGoodsDto.setRemainCount(Integer.parseInt(multipartRequest.getParameter("remainCount")));
		dbGoodsDto.setContent(multipartRequest.getParameter("content"));
		
		adminGoodsService.goodsRegistration(dbGoodsDto);
		
		String body = "<script>";
			   body += "alert('성공적으로 등록되었습니다.');";
			   body += " location.href='" + multipartRequest.getContextPath() + "/goods/goodsList';";
			   body += "</script>";
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 상품 수정 페이지로 이동 */
	@RequestMapping(value="/goodsUpdate", method=RequestMethod.GET)
	public ModelAndView goodsUpdate(@RequestParam("num") int num) throws Exception {
		ModelAndView mv = new ModelAndView("adminGoods/goodsUpdate");
		mv.addObject("goodsDto", adminGoodsService.getGoodsInfo(num));
		return mv;
	}
	
	
	/* 상품 정보 수정 */
	@RequestMapping(value="/goodsUpdate", method=RequestMethod.POST)
	public ResponseEntity<Object> goodsUpdate(@ModelAttribute GoodsDto goodsDto, HttpServletRequest request) throws Exception {
		
		adminGoodsService.goodsUpdate(goodsDto);
		
		String body = "<script>";
			   body += "alert('성공적으로 수정 되었습니다.');";
			   body += " location.href='" + request.getContextPath() + "/goods/goodsList';";
			   body += "</script>";
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 상품 삭제 */
	@RequestMapping(value="/goodsDelete", method=RequestMethod.GET)
	public ResponseEntity<Object> goodsDelete(@RequestParam("num") int num,
											 @RequestParam("fileName") String fileName,
											 @RequestParam("secondFileName") String secondFileName,
											 @RequestParam("thirdFileName") String thirdFileName,
											 @RequestParam("fourthFileName") String fourthFileName,
											 HttpServletRequest request) throws Exception {
		
		adminGoodsService.goodsDelete(num);
		
		/* 서버에서 파일 삭제 */
		File f1 = new File(CURR_IMAGE_REPO_PATH + seperatorPath + fileName);
		File f2 = new File(CURR_IMAGE_REPO_PATH + seperatorPath + secondFileName);
		File f3 = new File(CURR_IMAGE_REPO_PATH + seperatorPath + thirdFileName);
		File f4 = new File(CURR_IMAGE_REPO_PATH + seperatorPath + fourthFileName);
		f1.delete();
		f2.delete();
		f3.delete();
		f4.delete();
		
		String body = "<script>";
			   body += "alert('성공적으로 삭제 되었습니다.');";
			   body += " location.href='" + request.getContextPath() + "/goods/goodsList';";
			   body += "</script>";
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}

}
