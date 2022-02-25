package com.ezen.spboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.spboard.dto.Paging;
import com.ezen.spboard.dto.SpBoard;
import com.ezen.spboard.util.DBManager;

@Repository
public class BoardDao {
	
	@Autowired
	DBManager dbm;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public int getAllCount() {
		String sql = "select count(*) as count from board";
		int count = 0;
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) count = rs.getInt("count");
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
		return count;
	}
	
	
	
	public void Deleate(String num) {
		String sql = "delete from board where num=?";
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.executeUpdate();
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
	}
	
	
	
	public void update(SpBoard sb) {
		String sql = "Update board set  pass=?, name=?, email=?,title=?, "
				+ " content=? where num=?";
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sb.getPass() );
			pstmt.setString(2, sb.getName() );
			pstmt.setString(3, sb.getEmail() );
			pstmt.setString(4, sb.getTitle() );
			pstmt.setString(5, sb.getContent() );
			pstmt.setInt(6, sb.getNum() );
			pstmt.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
	}
	
	
	public SpBoard getBoard_edit(String num) {
		SpBoard  sb = new SpBoard();
		String sql = "select * from board where num=?";
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				sb.setNum(rs.getInt("num"));
				sb.setName(rs.getString("name"));
				sb.setPass(rs.getString("pass"));
				sb.setEmail(rs.getString("email"));
				sb.setTitle(rs.getString("title"));
				sb.setContent(rs.getString("content"));
				sb.setWritedate(rs.getTimestamp("writedate"));
				sb.setReadcount(rs.getInt("readcount"));
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
		return sb;
	}
	
	
	public SpBoard getBoard(String num) {
		SpBoard  sb = new SpBoard();
		String sql="Update board set readcount = readcount +1 where num=?";
		int cnt=0;
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.executeUpdate();
			pstmt.close();
			sql = "select * from board where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				sb.setNum(rs.getInt("num"));
				sb.setName(rs.getString("name"));
				sb.setPass(rs.getString("pass"));
				sb.setEmail(rs.getString("email"));
				sb.setTitle(rs.getString("title"));
				sb.setContent(rs.getString("content"));
				sb.setWritedate(rs.getTimestamp("writedate"));
				sb.setReadcount(rs.getInt("readcount"));
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
		return sb;
	}
	
	
	public void insert(SpBoard sb) {
		String sql = "insert into board(num, pass, name, email, title, content) "
				+ "values( board_seq.nextVal, ?,?,?,?,? )";
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString( 1, sb.getPass() );
			pstmt.setString( 2, sb.getName() );
			pstmt.setString( 3, sb.getEmail() );
			pstmt.setString( 4, sb.getTitle() );
			pstmt.setString( 5, sb.getContent() );
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
		
	}
	
	
	public ArrayList<SpBoard> selectAll(Paging paging){
		ArrayList<SpBoard> list = new ArrayList<SpBoard>();
		int startNum = paging.getStartNum();
	    int endNum = paging.getEndNum();
	    //System.out.println(startNum+ " " + endNum);
		String sql = "select * from ( "
				+ "select * from ( "
				+ "select ROWNUM as row_num, m.*  from "
				+ "(select * from board order by num desc )m"
				+ ") where row_num >= ?"
				+ ") where row_num <= ?";
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,  startNum);
			pstmt.setInt(2,  endNum);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SpBoard sb = new SpBoard();
				sb.setNum(rs.getInt("num"));
				sb.setPass(rs.getString("pass"));
				sb.setName(rs.getString("name"));
				sb.setTitle(rs.getString("title"));
				sb.setEmail(rs.getString("email"));
				sb.setContent(rs.getString("content"));
				sb.setWritedate(rs.getTimestamp("writedate"));
				sb.setReadcount(rs.getInt("readcount"));
				list.add(sb);
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {	dbm.close(con, pstmt, rs); }
		return list;
	}
}
