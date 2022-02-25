package com.ezen.spboard.service.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.spboard.dao.BoardDao;
import com.ezen.spboard.dto.Paging;
import com.ezen.spboard.dto.SpBoard;

@Service
public class BoardService {

	@Autowired
	BoardDao bdao;
	
	public void boardDeleate(String num) {
		bdao.Deleate(num);
	}
	
	
	public void boardUpdate(SpBoard svo) {
		bdao.update(svo);
	}
	
	
	
	
	public SpBoard getBoard_edit(String num) {
		SpBoard sb = bdao.getBoard_edit(num);
		return sb;
	}	
	
	public SpBoard getBoard(String num) {
		SpBoard sb = bdao.getBoard(num);
		return sb;
	}
	
	
	public void boardInsert(SpBoard sb) {
		bdao.insert(sb);
	}
	
	
	public ArrayList<SpBoard> selectBoardAll(Paging paging){
		ArrayList<SpBoard> list = bdao.selectAll(paging);
		return list;
	}
	
	public int getAllCount() {
		int count = bdao.getAllCount();
		return count;
	}
	
}
