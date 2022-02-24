package com.portfolio.gms.admin.member.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.member.service.AdminMemberService;
import com.portfolio.gms.member.dto.MemberDto;

@Controller
@RequestMapping("adminMember")
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;
	
	
	/* 회원가입한 사람들 리스트 불러오기 */
	@RequestMapping(value="/memberList", method=RequestMethod.GET)
	public ModelAndView memberList() throws Exception {
		ModelAndView mv = new ModelAndView("adminMember/memberList");
		mv.addObject("memberList", adminMemberService.memberList());
		return mv;
	}
	
	
	/* 회원가입한 사람들 리스트 불러오기 (옵션에 따라서) */
	@RequestMapping(value="/memberListOption", method=RequestMethod.POST)
	public ModelAndView memberListOption(@RequestParam("option") String option) throws Exception {
		ModelAndView mv = new ModelAndView("adminMember/memberList");
		mv.addObject("memberList", adminMemberService.memberListOption(option));
		mv.addObject("reOption", option);
		return mv; 
	}
	
	
	/* 회원가입한 사람들 리스트를 Excel로 다운받기 */
	@RequestMapping(value="/memberExcelExport" , method=RequestMethod.GET)
	public void memberExcelExport(HttpServletResponse response , @RequestParam Map<String, String> dateMap) throws Exception {
		  
		SimpleDateFormat joinSdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat fileSdf = new SimpleDateFormat("yyyy_MM_dd_hh_mm");
		String makeFileTime = fileSdf.format(new Date());
		String makeFileName = makeFileTime + "_memberList.xls";
		
	    // 워크북 생성
	    Workbook wb = new HSSFWorkbook();
	    Sheet sheet = wb.createSheet("회원리스트");
	    Row row = null;
	    Cell cell = null;

	    int rowNo = 0;

	    // 테이블 헤더용 스타일
	    CellStyle headStyle = wb.createCellStyle();
	    // 가는 경계선
	    headStyle.setBorderTop(BorderStyle.THIN);
	    headStyle.setBorderBottom(BorderStyle.THIN);
	    headStyle.setBorderLeft(BorderStyle.THIN);
	    headStyle.setBorderRight(BorderStyle.THIN);

	    // 노란색 배경
	    headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
	    headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);

	    // 가운데 정렬
	    headStyle.setAlignment(HorizontalAlignment.CENTER);

	    // 데이터용 경계 스타일 테두리만 지정
	    CellStyle bodyStyle = wb.createCellStyle();
	    bodyStyle.setBorderTop(BorderStyle.THIN);
	    bodyStyle.setBorderBottom(BorderStyle.THIN);
	    bodyStyle.setBorderLeft(BorderStyle.THIN);
	    bodyStyle.setBorderRight(BorderStyle.THIN);

	    // 헤더 생성
	    row = sheet.createRow(rowNo++);
	    cell = row.createCell(0);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("회원아이디");
	    cell = row.createCell(1);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("회원이름");
	    cell = row.createCell(2);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("휴대폰번호");
	    cell = row.createCell(3);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("주소");
	    cell = row.createCell(4);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("가입일");
	    cell = row.createCell(5);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("탈퇴 신청 날짜");
	    
		for (MemberDto memberDto : adminMemberService.memberList()) {
			row = sheet.createRow(rowNo++);
	        cell = row.createCell(0);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(memberDto.getMemberId());
	        cell = row.createCell(1);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(memberDto.getMemberName());
	        cell = row.createCell(2);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(memberDto.getHp1() + "-" + memberDto.getHp2() + "-" + memberDto.getHp3());
	        cell = row.createCell(3);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(memberDto.getZipcode());
	        cell = row.createCell(4);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(joinSdf.format(memberDto.getJoinDate()));
	        cell = row.createCell(5);
	        if (memberDto.getDeleteAccount() != null) {
		        cell.setCellStyle(bodyStyle);
		        cell.setCellValue(joinSdf.format(memberDto.getDeleteAccount()));
	        } else {
	        	cell.setCellStyle(bodyStyle);
	        	cell.setCellValue("x");
	        }

		} 

	    response.setContentType("ms-vnd/excel");
	    response.setHeader("Content-Disposition", "attachment;filename="+makeFileName);

	    // 엑셀 출력
	    wb.write(response.getOutputStream());
	    wb.close();

		
	}
	
}
