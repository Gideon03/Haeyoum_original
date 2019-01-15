package com.haeyoum.m.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.haeyoum.group.model.GroupList;
import com.haeyoum.group.service.GroupMemberService;
import com.haeyoum.group.service.GroupService;
import com.haeyoum.member.model.LoginUser;

@RestController
@RequestMapping("/m")
@SessionAttributes("user")
public class GroupRestController {
	
	@Autowired
	private GroupService groupSvc;
	@Autowired
	private GroupMemberService groupMemberSvc;
	
	@RequestMapping("/groupList")
	public String groupList(@ModelAttribute("user") LoginUser user, Model model,HttpSession session,GroupList groupList) {
		user.setGroup_id(0);
		int stPage = 0;
		groupList.setGroup_id(user.getGroup_id());
		
		List<GroupList> list = groupSvc.groupList(stPage, user.getMember_id());
	
		model.addAttribute("groupList", list);
		
		Gson gson = new Gson();
		String strJson = gson.toJson(model);
		return strJson;
		
	}
	
	/*@ResponseBody
	@RequestMapping("/groupList/{stPage}")
	public Map<String, List<GroupList>> groupList(@PathVariable("stPage") int stPage,
			@ModelAttribute("user") LoginUser user) {
		stPage *= 11;

		Map<String, List<GroupList>> groupList = new HashMap<>();
		List<GroupList> list = groupSvc.groupList(stPage, user.getMember_id());
		
		groupList.put("list", list);
		return groupList;
	}*/
	
	
	
	
	
}















