package com.ezenshopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ezenshopping.dto.Cartdto;
import com.ezenshopping.dto.adminuserdto;
import com.ezenshopping.dto.orderdto;

public class adminDao {
	private adminDao() {
	}

	private static adminDao ist = new adminDao();

	public static adminDao getInstance() {
		return ist;
	}

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public ArrayList<orderdto> getDeliveryOk(){
		ArrayList<orderdto> list = new ArrayList<orderdto>();
		String sql="select * from ezenorder_view where result=2 and delivery=2";
		try {
			con=dbman.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				orderdto odto = new orderdto();
				odto.setEdseq(rs.getInt("edseq"));
				odto.setResult(rs.getString("result"));
				odto.setEoseq(rs.getInt("eoseq"));
				odto.setOrderdate(rs.getDate("orderdate"));
				odto.setPname(rs.getString("pname"));
				odto.setQuantity(rs.getInt("quantity"));
				odto.setEmail(rs.getString("email"));
				odto.setName(rs.getString("name"));
				odto.setPhone(rs.getString("phone"));
				odto.setDoroaddress(rs.getString("doroaddress"));
				odto.setAddress(rs.getString("address"));
				odto.setPostnum(rs.getString("postnum"));
				list.add(odto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbman.close(con, pstmt, rs);
		}
		return list;
	}	
	
	
public void deliveryupdate(int key) {
	String sql="update ezenorder_d set delivery=2 where eoseq=? and result=2";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, key);
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}
public ArrayList<orderdto> getDelivery(){
	ArrayList<orderdto> list = new ArrayList<orderdto>();
	String sql="select * from ezenorder_view where result=2 and delivery=1";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			orderdto odto = new orderdto();
			odto.setEdseq(rs.getInt("edseq"));
			odto.setResult(rs.getString("result"));
			odto.setEoseq(rs.getInt("eoseq"));
			odto.setOrderdate(rs.getDate("orderdate"));
			odto.setPname(rs.getString("pname"));
			odto.setQuantity(rs.getInt("quantity"));
			odto.setEmail(rs.getString("email"));
			odto.setName(rs.getString("name"));
			odto.setPhone(rs.getString("phone"));
			odto.setDoroaddress(rs.getString("doroaddress"));
			odto.setAddress(rs.getString("address"));
			odto.setPostnum(rs.getString("postnum"));
			list.add(odto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return list;
}
public void orderresultupdate(int edseq) {
	String sql="update ezenorder_d set result=2 where edseq=?";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, edseq);
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}
public ArrayList<orderdto> getAllOrderlist(){
	ArrayList<orderdto> list = new ArrayList<orderdto>();
	String sql="select * from ezenorder_view order by result asc";
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			orderdto odto = new orderdto();
			odto.setEdseq(rs.getInt("edseq"));
			odto.setResult(rs.getString("result"));
			odto.setEoseq(rs.getInt("eoseq"));
			odto.setOrderdate(rs.getDate("orderdate"));
			odto.setPname(rs.getString("pname"));
			odto.setQuantity(rs.getInt("quantity"));
			odto.setEmail(rs.getString("email"));
			odto.setName(rs.getString("name"));
			odto.setPhone(rs.getString("phone"));
			odto.setDoroaddress(rs.getString("doroaddress"));
			odto.setAddress(rs.getString("address"));
			odto.setPostnum(rs.getString("postnum"));
			list.add(odto);
		}
		
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	return list;
}
public void setorder(String email) {
	String sql="insert into ezenorder(eoseq,email) values(order_seq.nextval,?)";
	String sql1="select max(eoseq)as eoseq from ezenorder where email=?";
	String sql2="select pseq,qty from cartview where email=?";
	String sql3="insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,?,?,?)";
	String sql4="delete from ezencart where email=?";
	int eoseq=0;
	ArrayList<Cartdto> list = new ArrayList<Cartdto>();
	try {
		con=dbman.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		pstmt=con.prepareStatement(sql1);
		pstmt.setString(1, email);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			eoseq = rs.getInt("eoseq");
		}
		pstmt.close();
		rs.close();
		pstmt=con.prepareStatement(sql2);
		pstmt.setString(1, email);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			Cartdto cdto = new Cartdto();
			cdto.setPseq(rs.getInt("pseq"));
			cdto.setQty(rs.getInt("qty"));
			list.add(cdto);
		}
		pstmt.close();
		rs.close();
		for(int i=0; i<list.size(); i++) {
			pstmt=con.prepareStatement(sql3);
			pstmt.setInt(1, eoseq);
			pstmt.setInt(2, list.get(i).getPseq());
			pstmt.setInt(3, list.get(i).getQty());
			pstmt.executeUpdate();
			pstmt.close();
		}
		pstmt=con.prepareStatement(sql4);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
}
	
public adminuserdto getAdmin(String email) {
		adminuserdto adto = new adminuserdto();
		String sql="select * from admin where email=?";
		try {
			con=dbman.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				adto.setEmail(email);
				adto.setName(rs.getString("name"));
				adto.setPhone(rs.getString("phone"));
				adto.setPwd(rs.getString("pwd"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbman.close(con, pstmt, rs);
		}
		return adto;
	}
}
