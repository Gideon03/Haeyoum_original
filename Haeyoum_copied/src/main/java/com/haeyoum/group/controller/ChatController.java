package com.haeyoum.group.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haeyoum.group.model.ChatReq;
import com.haeyoum.group.service.ChatService;
import com.haeyoum.member.model.LoginUser;

@Controller
@RequestMapping("/group")
@SessionAttributes("user")
public class ChatController {
	
	private final String GROUP_LIST = "group/groupList";
	private final String GROUP_CHAT = "chat/chatRoom";
	
	@Autowired
	private ChatService chatSvc;

	@RequestMapping("/chat")
	public String chat(@ModelAttribute("user") LoginUser user, Model model) {
		if(user.getGroup_id() == 0) {
			return GROUP_LIST;
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("group_id", user.getGroup_id());
		
		List<ChatReq> reqChatList = chatSvc.chatList(map);
		
		model.addAttribute("msgList", reqChatList);
		return GROUP_CHAT;
	}

}
