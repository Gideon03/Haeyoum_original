package com.haeyoum.group.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haeyoum.group.model.Note;
import com.haeyoum.group.model.NoteUpdate;
import com.haeyoum.group.service.NoteService;
import com.haeyoum.member.model.LoginUser;
import com.haeyoum.member.model.Member;
import com.haeyoum.member.service.MemberService;

@Controller
@RequestMapping("/group/note")
@SessionAttributes("user")
public class NoteController {
	private static final String READ = "note/noteText";
	private static final String LIST = "note/noteList";
	private static final String CREATENOTE = "note/addNote";
	private static final String CONFIRM = "note/noteConfirm";
	private static final String DELETE = "note/deleteNote";
	private static final String UPDATE = "note/updateNote";
	
	private static final boolean SUCCESSE = true;
	private static final boolean FAIL = false;

	@Autowired
	private NoteService noteSvc;
	@Autowired
	private MemberService memberSvc;

	@RequestMapping("/noteList")
	public String note_list(@ModelAttribute("user") LoginUser user, Model model) {
		model.addAttribute("list", noteSvc.selectList(user.getGroup_id()));
		return LIST;
	}

	@RequestMapping("/readNote")
	public String readNote(Model model, @RequestParam("con_id") int con_id, 
			@ModelAttribute("user") LoginUser user) {
		Note result = noteSvc.readNote(con_id, true);
		model.addAttribute("note", result);
		return READ;
	}

	@RequestMapping(value = "/createNote", method = RequestMethod.GET)
	public String createNote() {
		return CREATENOTE;
	}

	@RequestMapping(value = "/createNote", method = RequestMethod.POST)
	public String createNote(Model model, Note note, @ModelAttribute("user") LoginUser user) {
		note.setNote_writer(user.getMember_id());
		note.setGroup_id(user.getGroup_id());
		
		int result = noteSvc.insertNote(note);
		if (result != 0) {
			model.addAttribute("createResult", SUCCESSE);
		} else {
			model.addAttribute("createResult", FAIL);
		}
		return CONFIRM;
	}

	@RequestMapping(value = "/updateNote", method = RequestMethod.GET)
	public String update_note(Model model, @RequestParam("con_id") int con_id) {
		model.addAttribute("note", noteSvc.readNote(con_id, false));
		return UPDATE;
	}

	@RequestMapping(value = "/updateNote", method = RequestMethod.POST)
	public String update_note(Model model, NoteUpdate updateNote, @ModelAttribute("user") LoginUser user) {

		int result = noteSvc.updateNote(updateNote);
		if (result != 0) {
			model.addAttribute("updateResult", SUCCESSE);
			model.addAttribute("con_id", updateNote.getCon_id());
		} else {
			model.addAttribute("updateResult", FAIL);
		}
		return CONFIRM;
	}
	
	@RequestMapping(value = "/deleteNote", method = RequestMethod.GET)
	public String delete(@RequestParam("con_id") int con_id, Model model) {
		model.addAttribute("con_id", con_id);
		return DELETE;
	}

	@RequestMapping(value = "/deleteNote", method = RequestMethod.POST)
	public String delete(Model model, @ModelAttribute("user") LoginUser user, 
			@RequestParam("con_id") int con_id, @RequestParam("delete_pw")String delete_pw ) {
		
		Member member = memberSvc.selectByMember(user.getMember_id());
		
		HashMap<String, Object> errors = memberSvc.confirmMember(member, delete_pw);
		model.addAttribute("errors", errors);
		
		if (errors.containsKey("notFoundUser")) {
			errors.put("idError", Boolean.TRUE);
		}
		if (!errors.isEmpty()) {
			model.addAttribute("con_id", con_id);
			return DELETE;
		} 
	
		int result = noteSvc.deleteNote(con_id);
		model.addAttribute("user", user);
		if (result != 0) {
			model.addAttribute("deleteResult", SUCCESSE);
		} else {
			model.addAttribute("deleteResult", FAIL);
		}
		return CONFIRM;
	}
}
