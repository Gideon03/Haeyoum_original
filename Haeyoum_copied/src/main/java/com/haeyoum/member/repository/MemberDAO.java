package com.haeyoum.member.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.haeyoum.m.model.MemberRestModel;
import com.haeyoum.member.model.LoginUser;
import com.haeyoum.member.model.Member;
import com.haeyoum.member.model.UpdateMember;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String nameSpace = "member.model.MemberMapper";

	public int insert(Member member) {
		return sqlSession.insert(nameSpace + ".insert", member);
	}

	public int delete(Member member) {
		return sqlSession.delete(nameSpace + ".delete", member);
	}

	public Member selectById(HashMap<String, Object> map) {
		return sqlSession.selectOne(nameSpace + ".selectById", map);
	}
	
	public int checkId(String member_id) {
		return sqlSession.selectOne(nameSpace + ".checkId", member_id);
	}
	
	public int count() {
		return sqlSession.selectOne(nameSpace + ".count");
	}
	
	public List<Member> selectAll() {
		return sqlSession.selectList(nameSpace + ".selectAll");
	}

	public int update(UpdateMember updateMem) {
		return sqlSession.update(nameSpace + ".update", updateMem);
	}

	public int insertM(MemberRestModel member) {
		return sqlSession.insert(nameSpace + ".insertM", member);
	}

}