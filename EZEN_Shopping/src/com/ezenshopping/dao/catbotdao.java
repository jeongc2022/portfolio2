package com.ezenshopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ezenshopping.dto.usercbotdto;

public class catbotdao {
private catbotdao() {}
private static catbotdao ist = new catbotdao();
public static catbotdao getInstance() {return ist;}
Connection con = null;
PreparedStatement pre = null;
ResultSet re = null;
public ArrayList<usercbotdto> getanswer(String email){
	ArrayList<usercbotdto>list = new ArrayList<usercbotdto>();
	String sql="select * from usercatbot where email=? order by ucseq asc";
	try {
		con=dbman.getConnection();
		pre=con.prepareStatement(sql);
		pre.setString(1, email);
		re=pre.executeQuery();
		while(re.next()) {
			usercbotdto udto = new usercbotdto();
			udto.setUcseq(re.getInt("ucseq"));
			udto.setEmail(email);
			udto.setKey(re.getString("key"));
			udto.setAnswer(re.getString("answer"));
			list.add(udto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return list;
}
public void setusercbot(usercbotdto udto){
	String sql="insert into usercatbot values(ucseq_seq.nextval,?,?,?)";
	try {
		con=dbman.getConnection();
		pre=con.prepareStatement(sql);
		pre.setString(1, udto.getEmail());
		pre.setString(2, udto.getKey());
		pre.setString(3, udto.getAnswer());
		pre.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
}

public String getAnswer(String key) {
	String answer ="";
	String sql="select answer from catbot where key like ?";
	try {
		con=dbman.getConnection();
		pre = con.prepareStatement(sql);
		pre.setString(1, "%"+key+"%");
		re=pre.executeQuery();
		if(re.next()) {
			answer=re.getString("answer");
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return answer;
	}
}
