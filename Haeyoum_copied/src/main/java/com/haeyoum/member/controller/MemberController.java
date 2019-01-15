package com.haeyoum.member.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haeyoum.member.model.FileVo;
import com.haeyoum.member.model.LoginUser;
import com.haeyoum.member.model.Member;
import com.haeyoum.member.model.UpdateMember;
import com.haeyoum.member.service.FileUploadService;
import com.haeyoum.member.service.MemberService;

@Controller
@RequestMapping("/member")
@SessionAttributes("user")
public class MemberController {

	private static final String CONFIRM = "member/confirm";
	private static final String CHECK = "member/check";
	private static final String REGIST = "member/registForm";
	private static final String LOGIN = "member/loginForm";
	private static final String USER_UPDATE = "member/updateForm";
	private static final String LOGOUT = "member/logoutForm";

	@Autowired
	private MemberService memberSvc;

	@Autowired
	private FileUploadService fileService;

	@ModelAttribute("realPath")
	public String getRealPath(HttpServletRequest request) {
		String realPath = request.getRealPath("/WEB-INF/resources/upload/");
		return realPath;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist() {
		return REGIST;
	}

	@ResponseBody
	@RequestMapping(value="/checkId/{member_id}", method=RequestMethod.POST)
	public String checkId(@PathVariable("member_id") String member_id) {
		int result = memberSvc.checkId(member_id);
		
		String msg;
		if (result == 0)
			msg = "";
		else
			msg = "중복된 아이디가 있어윰..ㅠㅠ";

		return "{\"value\" : \"" + msg + "\"}";
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(Model model, Member member, FileVo file, @ModelAttribute("realPath") String realPath,
			@RequestParam("birthday")String birthday) throws Exception {
		

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			member.setMember_birthday(format.parse(birthday));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		fileService.saveFile(realPath, file);

		String fileName = file.getFile().getOriginalFilename();
		member.setMember_image(fileName);
		System.out.println(fileName);
		System.out.println(realPath);

		Object result = memberSvc.regist(member);
		if (result != null) {
			model.addAttribute("regist", 1);
		}
		return CHECK;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return LOGIN;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, @RequestParam("member_id") String member_id,
			@RequestParam("member_password") String member_password, HttpServletRequest request) {
		
		Member member = memberSvc.selectByMember(member_id);
		
		HashMap<String, Object> errors = memberSvc.confirmMember(member, member_password);
		model.addAttribute("errors", errors);
		if (errors.containsKey("notFoundUser")) {
			errors.put("idError", Boolean.TRUE);
			return LOGIN;
		} else if (errors.containsKey("pwError")) {
			return LOGIN;
		} else {
			LoginUser user = memberSvc.loginUser(member);
			user.setLogin(true);
			model.addAttribute("user", user);
			
			return CONFIRM;
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@ModelAttribute("user") LoginUser user) {
		return USER_UPDATE;
	}

	
	@RequestMapping(value = "/update", method = RequestMethod.POST)	
	public String update(Model model, FileVo file, UpdateMember updateMem, 
			@ModelAttribute("realPath") String realPath,
			@ModelAttribute("user") LoginUser user){
	
		fileService.saveFile(realPath, file);
		String fileName = file.getFile().getOriginalFilename();
		System.out.println("파일네임"+fileName);
		System.out.println("리얼패스"+realPath);
		
		if (fileName == "") {
			fileName = user.getMember_image();
		}
		updateMem.setMember_id(user.getMember_id());
		updateMem.setMember_image(fileName);
		
		int result = 0;
		if(user != null) {		
			result = memberSvc.update(updateMem);
			Member member = memberSvc.selectByMember(user.getMember_id());
			LoginUser newUser = memberSvc.loginUser(member);
			model.addAttribute("user", newUser);
			model.addAttribute("update", result);	
		}
		return CHECK;
	}
	

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return LOGOUT;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(Model model, @ModelAttribute("user") LoginUser user) {
		if (user.isLogin()) {
			user.setLogin(false);
		}
		return CONFIRM;
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "member/mypage";
	}

}
