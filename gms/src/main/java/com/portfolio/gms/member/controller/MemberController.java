package com.portfolio.gms.member.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.member.dto.MemberDto;
import com.portfolio.gms.member.service.MemberService;

@Controller
@RequestMapping("members")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 회원가입 화면으로 이동
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public ModelAndView addMember() throws Exception {
		return new ModelAndView("members/join");
	}
	
	// 회원가입 기능
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute MemberDto memberDto) throws Exception {
		
		if (memberDto.getSmsstsYn() == null) {
			memberDto.setSmsstsYn("N");
		}
		
		if (memberDto.getEmailstsYn() == null) {
			memberDto.setEmailstsYn("N");
		}
		
		memberService.addMember(memberDto);
		
		return new ModelAndView("members/joinSuccess");
	}
	
	// 아이디 중복 체크
	@RequestMapping(value="/overlapped", method=RequestMethod.POST)
	public ResponseEntity<Object> overLapped(@RequestParam("memberId") String memberId, HttpServletRequest request) throws Exception {
		return new ResponseEntity<Object>(memberService.overlapped(memberId), HttpStatus.OK);
	}
	
	// 로그인 화면으로 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login() throws Exception {
		return new ModelAndView("members/login");
	}
	
	// 로그인 기능
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute MemberDto memberDto, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		MemberDto dbMemberDto = memberService.login(memberDto);
		HttpSession session = request.getSession();
		
		if (dbMemberDto != null) {
			
			// 삭제중인 계정일 경우 로그인 X
			if (dbMemberDto.getDeleteAccount() != null) {
				session.setAttribute("deleteIdCheck", true);
				mv.setViewName("redirect:/main/main");
				return mv;
			}
			
			session.setAttribute("isLogOn", true);
			session.setAttribute("loginId", memberDto.getMemberId());
			session.setMaxInactiveInterval(60 * 30);
			mv.addObject("deleteIdCheck", false);
			mv.setViewName("redirect:/main/main");
			
		} else {
			mv.addObject("invalidMember", true);
			mv.setViewName("members/login");
		}
		
		return mv;
	}
	
	// 로그아웃 기능
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.setAttribute("isLogOn", false);
		session.invalidate();
		return new ModelAndView("redirect:/main/main");
	}
	
	// 회원정보로 이동
	@RequestMapping(value="/memberInfo", method=RequestMethod.GET)
	public ModelAndView memberInfo(@RequestParam("memberId") String memberId) throws Exception {
		ModelAndView mv = new ModelAndView("members/memberInfo");
		mv.addObject("memberInfo", memberService.getInfo(memberId));
		return mv;
	}
	
	// 수정, 삭제시 패스워드 재확인 페이지로 이동
	@RequestMapping(value="/pwdCheck", method=RequestMethod.GET)
	public ModelAndView pwdCheck(HttpServletRequest request, @RequestParam("updateAndDeleteCheck") String updateAndDeleteCheck) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/pwdCheck");
		mv.addObject("updateAndDeleteCheck", updateAndDeleteCheck);
		
		HttpSession session = request.getSession();
		session.getAttribute("loginId");
		
		return mv;
	}
	
	// 수정, 삭제시 패스워드 재확인 (Service : login() 재활용)
	@RequestMapping(value="/pwdCheck", method=RequestMethod.POST)
	public ModelAndView pwdCheck(@ModelAttribute MemberDto memberDto, @RequestParam("updateAndDeleteCheck") String updateAndDeleteCheck, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		MemberDto dbmemberDto = memberService.login(memberDto);
		
		if (dbmemberDto != null) {
			
			HttpSession session = request.getSession();
			session.getAttribute("loginId");
			
			if (updateAndDeleteCheck.equals("update")) {
				mv.addObject("memberInfo", dbmemberDto);
				mv.setViewName("members/update");
				
			} else {
				mv.addObject("memberInfo", dbmemberDto);
				mv.setViewName("members/delete");
			}
			
		} else {
			mv.addObject("invalidMember", true);
			mv.setViewName("members/pwdCheck");
		}

		return mv;
	}
	
	// 회원정보 수정하기
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ResponseEntity<Object> update(@ModelAttribute MemberDto memberDto, HttpServletRequest request) throws Exception {
		
		if (memberDto.getSmsstsYn() == null) {
			memberDto.setSmsstsYn("N");
		}
		
		if (memberDto.getEmailstsYn() == null) {
			memberDto.setEmailstsYn("N");
		}
		
		memberService.memberUpdate(memberDto);
		
		String body  = "<script>";
			   body += "alert('수정이 완료되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/members/memberInfo?memberId=" + memberDto.getMemberId() + "';";
			   body += "</script>";
		
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	// 회원정보 삭제하기 (등록)
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public ResponseEntity<Object> delete(@RequestParam("memberId") String memberId, HttpServletRequest request) throws Exception {
		
		memberService.deleteCheckUpdate(memberId);
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		String body  = "<script>";
			   body += "alert('삭제가 완료되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/main/main';";
			   body += "</script>";
	
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	// 출석체크
	@RequestMapping(value="/attendanceCheck", method=RequestMethod.GET)
	public ResponseEntity<Object> attendanceCheck(@RequestParam("memberId") String memberId, HttpServletRequest request) throws Exception {
		
		MemberDto dbmemberDto = memberService.getInfo(memberId);
		String body = "";
		
		if (dbmemberDto.getAttendanceCheck() == 1) {
			body  = "<script>";
		    body += "alert('이미 오늘 출석체크가 완료되었습니다. (자정에 초기화됩니다.)');";
		    body += "location.href='" + request.getContextPath() + "/main/main';";
		    body += "</script>";
		} else {
			int addPoint = memberService.attendanceCheckOn(memberId);
			body  = "<script>";
		    body += "alert('출석체크 완료 !!! " + addPoint + " 포인트가 적입되었습니다 :D');";
		    body += "location.href='" + request.getContextPath() + "/main/main';";
		    body += "</script>";
		}
				
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	
	// 삭제 등록이 된 지 5일 후에 삭제되는 메서드 : 하루에 한 번 매일 자정에 실행
	@Scheduled(cron = "0 0 0 * * *")
	public void deleteAccount() throws Exception {
		
		Date date = new Date(System.currentTimeMillis());
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -5);
		SimpleDateFormat fourteenFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = fourteenFormat.format(cal.getTime());
		
		memberService.deleteMember(dateString);
		
		memberService.attendanceCheckOff(); // 추가로 출석체크도 초기화
		
	}
	
}
