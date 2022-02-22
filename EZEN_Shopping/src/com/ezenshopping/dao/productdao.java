package com.ezenshopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenshopping.dto.pagingdto;
import com.ezenshopping.dto.productdto;

public class productdao {
private productdao() {}
private static productdao ist = new productdao();
public static productdao getInstance() {return ist;}
Connection con = null;
PreparedStatement pre = null;
ResultSet re = null;

public productdto updateprolist(int pdtopseq){
    productdto pdto = new productdto();
    String sql = "select * from ezenproduct where pseq=?";
    
    try {
       con = dbman.getConnection();
       pre = con.prepareStatement(sql);
       pre.setInt(1, pdtopseq);
       re = pre.executeQuery();
       if (re.next()) {
          
          pdto.setPseq(re.getInt("pseq"));
          pdto.setPname(re.getString("pname"));
          pdto.setOriprice(re.getInt("oriprice"));
          pdto.setPrice(re.getInt("price"));
          pdto.setMargin(re.getInt("margin"));
          pdto.setQty(re.getInt("qty"));
          pdto.setSellingarea(re.getString("sellingarea"));
          pdto.setContent(re.getString("content"));
          pdto.setColor(re.getString("color"));
          pdto.setKind(re.getString("kind"));
          pdto.setImgurl(re.getString("imgurl"));
       
       }
    } catch (SQLException e) {
       e.printStackTrace();
    } finally {
       dbman.close(con, pre, re);
    }
    
    return pdto;
 }
 
 
 public void adminaddproduct(productdto pdto) {
    String sql = "insert into ezenproduct(pseq, pname, oriprice, price, margin, qty, sellingarea, content, color, kind, imgurl) "
          + " values(ezproduct_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    try {
       con = dbman.getConnection();
       pre = con.prepareStatement(sql);
       pre.setString(1, pdto.getPname());
       pre.setInt(2, pdto.getOriprice());
       pre.setInt(3, pdto.getPrice());
       pre.setInt(4, pdto.getMargin());
       pre.setInt(5, pdto.getQty());
       pre.setString(6, pdto.getSellingarea());
       pre.setString(7, pdto.getContent());
       pre.setString(8, pdto.getColor());
       pre.setString(9, pdto.getKind());
       pre.setString(10, pdto.getImgurl());
       pre.executeUpdate();
    } catch (SQLException e) {
       e.printStackTrace();
    } finally {
       dbman.close(con, pre, re);
    }

 };

public ArrayList<productdto> getAllProductlistexcel(){
	ArrayList<productdto> list = new ArrayList<productdto>();
	String sql="select * from ezenproduct";
	try {
		con=dbman.getConnection();
		pre=con.prepareStatement(sql);
		re = pre.executeQuery();
		while(re.next()) {
			productdto pdto = new productdto();
			pdto.setPseq(re.getInt("pseq"));
	        pdto.setPname(re.getString("pname"));
	        pdto.setOriprice(re.getInt("oriprice"));
	        pdto.setPrice(re.getInt("price"));
	        pdto.setMargin(re.getInt("margin"));
	        pdto.setQty(re.getInt("qty"));
	        pdto.setSellingarea(re.getString("sellingarea"));
	        pdto.setContent(re.getString("content"));
	        pdto.setColor(re.getString("color"));
	        pdto.setKind(re.getString("kind"));
	        pdto.setImgurl(re.getString("imgurl"));
	        list.add(pdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return list;
}




public int getAllCount(String key, String select) {
	int count = 0;
	String sql="select count(*) as cnt from ezenproduct where pname like ? and kind like ?";
	try {
		con=dbman.getConnection();
		pre=con.prepareStatement(sql);
		pre.setString(1, "%"+key+"%");
		pre.setNString(2, "%"+select+"%");
		re=pre.executeQuery();
		if(re.next()) {
			count = re.getInt("cnt");
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return count;
} 


public ArrayList<productdto> getAllProductlist(pagingdto paging,String key,String select){
	ArrayList<productdto> list = new ArrayList<productdto>();
	int startNum = paging.getStartNum();
	int endNum = paging.getEndNum();
	String sql="select * from (select * from (select ROWNUM as row_num, ezenproduct.* from (select * from ezenproduct where pname like ? and kind like ? order by pseq desc) ezenproduct)"
			+ " where row_num >=? )"
			+ " where row_num <=?";
	try {
		con=dbman.getConnection();
		pre=con.prepareStatement(sql);
		pre.setString(1, "%"+key+"%");
		pre.setNString(2, "%"+select+"%");
		pre.setInt(3, startNum);
		pre.setInt(4, endNum);
		re = pre.executeQuery();
		while(re.next()) {
			productdto pdto = new productdto();
			pdto.setPseq(re.getInt("pseq"));
	        pdto.setPname(re.getString("pname"));
	        pdto.setOriprice(re.getInt("oriprice"));
	        pdto.setPrice(re.getInt("price"));
	        pdto.setMargin(re.getInt("margin"));
	        pdto.setQty(re.getInt("qty"));
	        pdto.setSellingarea(re.getString("sellingarea"));
	        pdto.setContent(re.getString("content"));
	        pdto.setColor(re.getString("color"));
	        pdto.setKind(re.getString("kind"));
	        pdto.setImgurl(re.getString("imgurl"));
	        list.add(pdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return list;
}

public productdto getProductdetail(String pseq){
	   productdto pdto = new productdto();
	   String sql = "select * from ezenproduct where pseq=?";
	   
	   try {
	      con = dbman.getConnection();
	      pre = con.prepareStatement(sql);
	      pre.setInt(1, Integer.parseInt(pseq));
	      re = pre.executeQuery();
	      if(re.next()) {
	         pdto.setPseq(Integer.parseInt(pseq));
	         pdto.setPname(re.getString("pname"));
	         pdto.setOriprice(re.getInt("oriprice"));
	         pdto.setPrice(re.getInt("price"));
	         pdto.setMargin(re.getInt("margin"));
	         pdto.setQty(re.getInt("qty"));
	         pdto.setSellingarea(re.getString("sellingarea"));
	         pdto.setContent(re.getString("content"));
	         pdto.setColor(re.getString("color"));
	         pdto.setKind(re.getString("kind"));
	         pdto.setImgurl(re.getString("imgurl"));
	      }
	   } catch (SQLException e) {
	      e.printStackTrace();
	   } finally {
	      dbman.close(con, pre, re);
	   }
	   
	   return pdto;
	}

public ArrayList<productdto> getsearch(String key) {
	String sql="select * from ezenproduct where pname like ?";
	ArrayList<productdto> list = new ArrayList<productdto>();
	try {
		con=dbman.getConnection();
		pre = con.prepareStatement(sql);
		pre.setString(1,"%"+key+"%");
		re=pre.executeQuery();
		while(re.next()) {
			productdto pdto = new productdto();
			pdto.setPseq(re.getInt("pseq"));
			pdto.setPname(re.getString("pname"));
			pdto.setOriprice(re.getInt("oriprice"));
			pdto.setPrice(re.getInt("price"));
			pdto.setMargin(re.getInt("margin"));
			pdto.setQty(re.getInt("qty"));
			pdto.setSellingarea(re.getString("sellingarea"));
			pdto.setContent(re.getString("content"));
			pdto.setColor(re.getString("color"));
			pdto.setKind(re.getString("kind"));
			pdto.setImgurl(re.getString("imgurl"));
			list.add(pdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return list;
	}


public ArrayList<productdto> getProductlist(String kind) {
	String sql="select * from ezenproduct where kind=?";
	ArrayList<productdto> list = new ArrayList<productdto>();
	try {
		con=dbman.getConnection();
		pre = con.prepareStatement(sql);
		pre.setString(1,kind);
		re=pre.executeQuery();
		while(re.next()) {
			productdto pdto = new productdto();
			pdto.setPseq(re.getInt("pseq"));
			pdto.setPname(re.getString("pname"));
			pdto.setOriprice(re.getInt("oriprice"));
			pdto.setPrice(re.getInt("price"));
			pdto.setMargin(re.getInt("margin"));
			pdto.setQty(re.getInt("qty"));
			pdto.setSellingarea(re.getString("sellingarea"));
			pdto.setContent(re.getString("content"));
			pdto.setColor(re.getString("color"));
			pdto.setKind(re.getString("kind"));
			pdto.setImgurl(re.getString("imgurl"));
			list.add(pdto);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pre, re);
	}
	return list;
	}
}
