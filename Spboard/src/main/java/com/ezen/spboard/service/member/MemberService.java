package com.ezen.spboard.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.spboard.dao.MemberDao;
import com.ezen.spboard.dto.SpMember;

@Service
public class MemberService {
	
	@Autowired
	MemberDao mdao;
	
	public void memberModify(SpMember sm) {
		mdao.memberUpdate(sm);
	}
	
	public void memberRegister(SpMember sm) {
		mdao.memberInsert(sm);
	}
	
	
	public int confirmID(String id) {
		int result = mdao.confirmId(id);
		return result;
	}
	
	
	public SpMember memberSearch(String id) {
		SpMember sdto = mdao.Select(id);
		return sdto;
	}
}
