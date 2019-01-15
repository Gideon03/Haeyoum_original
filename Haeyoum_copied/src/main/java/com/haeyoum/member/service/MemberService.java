package com.haeyoum.member.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haeyoum.m.model.MemberRestModel;
import com.haeyoum.member.model.LoginUser;
import com.haeyoum.member.model.Member;
import com.haeyoum.member.model.UpdateMember;
import com.haeyoum.member.repository.MemberDAO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;

	public Member selectByMember(String member_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", member_id);
		return dao.selectById(map);
	}

	public HashMap<String, Object> confirmMember(Member member, String member_password) {
		HashMap<String, Object> errors = new HashMap<String, Object>();
		if (member == null) {
			errors.put("notFoundUser", Boolean.TRUE);
			return errors;
		} else if (!member.getMember_password().equals(member_password)) {
			errors.put("pwError", Boolean.TRUE);
		}
		return errors;
	}

	public LoginUser loginUser(Member member) {
		return new LoginUser(member.getMember_id(), member.getMember_image(), member.getMember_name(),
				member.getMember_nickname(), true);
	}

	public int checkId(String member_id) {
		return dao.checkId(member_id);
	}

	public int regist(Member member) {
		return dao.insert(member);
	}

	public int update(UpdateMember updateMem) {
		return dao.update(updateMem);
	}

	public int regist(MemberRestModel member) {
		return dao.insertM(member);
	}

}
