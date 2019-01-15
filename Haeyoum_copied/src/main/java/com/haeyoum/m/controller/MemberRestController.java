package com.haeyoum.m.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.haeyoum.m.model.MemberRestModel;
import com.haeyoum.member.model.Member;
import com.haeyoum.member.service.MemberService;

import haeyoum.util.DateUtil;

@RestController
@RequestMapping("/m/member")
public class MemberRestController {
	
	@Autowired
	private MemberService memberSvc;
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public Map<String, Integer> regist( MemberRestModel member ) {
		
		System.out.printf("(POST) id -> %s\n", member.getMember_id());
		System.out.printf("(POST) bd -> %s\n", member.getMember_birthday());
				
		Map<String, Integer> json = new HashMap<>(); 
		
		Member regMember = new Member();
		regMember.setMember_id(member.getMember_id());
		regMember.setMember_password(member.getMember_password());
		regMember.setMember_name(member.getMember_name());
		regMember.setMember_nickname(member.getMember_nick_name());
		regMember.setMember_birthday(new DateUtil().convertString(member.getMember_birthday()));
		regMember.setMember_email(member.getMember_email());
	
		int result = memberSvc.regist(regMember);
		
		json.put("result", result);

		return json;
	}
	@RequestMapping(value="/androidLogin", method=RequestMethod.POST)
	public String restful_1(
			String loginId, 
			String loginPasswords) {

		System.out.println(loginId);
		Member memberAdroid = new Member();
		memberAdroid.setMember_id(loginId);
		memberAdroid.setMember_password(loginPasswords);

		
		String member_id = memberAdroid.getMember_id();
		Member member = memberSvc.selectByMember(member_id);
		
		String member_password = member.getMember_password();
		HashMap<String, Object> errors = memberSvc.confirmMember(member, member_password);
		
		
		System.out.println("errors: " + errors.get("notFoundUser"));
		System.out.println("errors: " + errors.get("pwError"));
		
		
		if(!(errors.containsKey("notFoundUser")&&errors.containsKey("pwError"))) {
			Gson gson = new Gson();
			String strJson = gson.toJson("Success!!");
			return strJson;
		}else{
			Gson gson = new Gson();
			String strJson = gson.toJson("Fail!!");
			return strJson;
		}
	}
}
