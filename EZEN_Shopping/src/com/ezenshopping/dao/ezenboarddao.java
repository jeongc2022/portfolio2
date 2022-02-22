package com.ezenshopping.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.ezenshopping.dto.ezenboarddto;
import com.ezenshopping.dto.ezenreplydto;
import com.ezenshopping.dto.pagingdto;

public class ezenboarddao {
private ezenboarddao() {}
private static ezenboarddao ist = new ezenboarddao();
public static ezenboarddao getInstance() {return ist;}
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

public void insertreply(ezenreplydto rdto) {
	String sql="insert into ezenreply(rnum,bnum,email,name,rcontent) values(ezenreply_seq.nextval,?,?,?,?)";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, rdto.getBnum());
		pstmt.setString(2, rdto.getEmail());
		pstmt.setString(3, rdto.getName());
		pstmt.setString(4, rdto.getRcontent());
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}

public void insertboard(ezenboarddto bdto) {
	String sql="insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop) values(?,ezenboard_seq.nextval,?,?,?,?)";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bdto.getBemail());
		pstmt.setString(2, bdto.getBtitle());
		pstmt.setString(3, bdto.getBcontent());
		pstmt.setString(4, bdto.getName());
		pstmt.setString(5, bdto.getPrefershop());
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}
public void updateboard(ezenboarddto bdto) {
	String sql="update ezenboard set btitle=? , bcontent=? where bnum=?";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bdto.getBtitle());
		pstmt.setString(2, bdto.getBcontent());
		pstmt.setInt(3, bdto.getBnum());
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}

public void deleteboard(int bnum) {
	String sql ="delete from ezenreply where bnum=?";
	String sql1="delete from ezenboard where bnum=?";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, bnum);
		pstmt.executeUpdate();
		pstmt.close();
		pstmt=con.prepareStatement(sql1);
		pstmt.setInt(1, bnum);
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}

public ArrayList<ezenreplydto> getreply(int bnum){
	ArrayList<ezenreplydto> list = new ArrayList<ezenreplydto>();
	String sql = "select * from ezenreply where bnum=?";
	try {
		con=dbman.getConnection();
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, bnum);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			ezenreplydto rdto = new ezenreplydto();
			rdto.setBnum(rs.getInt("bnum"));
			rdto.setEmail(rs.getString("email"));
			rdto.setName(rs.getString("name"));
			rdto.setRcontent(rs.getString("rcontent"));
			rdto.setRdate(rs.getDate("rdate"));
			rdto.setRnum(rs.getInt("rnum"));
			list.add(rdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return list;
}

public void updatehit(int bnum) {
	String sql="update ezenboard set bhit=bhit+1 where bnum=?";
	try {
		con=dbman.getConnection();
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, bnum);
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}
public ezenboarddto getboardview(int bnum) {
	ezenboarddto bdto = new ezenboarddto();
	String sql = "select * from ezenboard where bnum = ?";
	try {
		con = dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, bnum);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			bdto.setBcontent(rs.getString("bcontent"));
			bdto.setBdate(rs.getDate("bdate"));
			bdto.setBemail(rs.getString("bemail"));
			bdto.setBhit(rs.getInt("bhit"));
			bdto.setBnum(rs.getInt("bnum"));
			bdto.setBtitle(rs.getString("btitle"));
			bdto.setName(rs.getString("name"));
			bdto.setPrefershop(rs.getString("prefershop"));
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return bdto;
}

public int getAllCount() {
	int count = 0;
	String sql="select count(*) as cnt from ezenboard";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt("cnt");
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return count;
}


public ArrayList<ezenboarddto> getboardlist(pagingdto paging){
	int startNum = paging.getStartNum();
	int endNum = paging.getEndNum();
	ArrayList<ezenboarddto>list = new ArrayList<ezenboarddto>();
	String sql="select * from (select * from (select ROWNUM as row_num, ezenboard.* from (select * from ezenboard order by bnum desc) ezenboard)"
			+ " where row_num >=? )"
			+ " where row_num <=?";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, startNum);
		pstmt.setInt(2, endNum);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			ezenboarddto bdto = new ezenboarddto();
			bdto.setBcontent(rs.getString("bcontent"));
			bdto.setBdate(rs.getDate("bdate"));
			bdto.setBemail(rs.getString("bemail"));
			bdto.setBhit(rs.getInt("bhit"));
			bdto.setBnum(rs.getInt("bnum"));
			bdto.setBtitle(rs.getString("btitle"));
			bdto.setName(rs.getString("name"));
			bdto.setPrefershop(rs.getString("prefershop"));
			list.add(bdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return list;
	}
}
