package com.ezenshopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenshopping.dto.Cartdto;

public class CartDao {
   private CartDao() {}
   private static CartDao ist = new CartDao();
   public static CartDao getInstance() {return ist;}
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   
   public void insertcartdata(Cartdto cdto) {
	      String sql = "insert into ezencart(cseq, pseq, qty, email) values(ezencart_seq.nextval ,? ,  ? , ?)";

	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1, cdto.getPseq());
	         pstmt.setInt(2, cdto.getQty());
	         pstmt.setString(3, cdto.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	   }
   
   public void deleteCart(String cseq) {
      String sql = "delete from ezencart where cseq=?";
      try {
            con = dbman.getConnection();
            pstmt = con.prepareStatement(sql); 
            pstmt.setInt(1, Integer.parseInt(cseq));
            pstmt.executeUpdate();
      } catch (Exception e) { e.printStackTrace();
       } finally { dbman.close(con, pstmt, rs); }   
   }
   
   public ArrayList<Cartdto> listCart(String email){
      ArrayList<Cartdto> list = new ArrayList<Cartdto>();
      String sql = "select * from cartview where email=? order by cseq desc";
      try {
            con = dbman.getConnection();
            pstmt = con.prepareStatement(sql); 
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
           while(rs.next()) {
                    Cartdto cvo = new Cartdto();
                  cvo.setPseq(rs.getInt(1));
                  cvo.setPname(rs.getString(2));
                  cvo.setOriprice(rs.getInt(3));
                  cvo.setPrice(rs.getInt(4));
                  cvo.setMargin(rs.getInt(5));
                  cvo.setSellingarea(rs.getString(6));
                  cvo.setContent(rs.getString(7));
                  cvo.setColor(rs.getString(8));
                  cvo.setKind(rs.getString(9));
                  cvo.setImgurl(rs.getString(10));
                  cvo.setCseq(rs.getInt(11));
                  cvo.setQty(rs.getInt(12));
                  cvo.setEmail(rs.getString(13));
                  list.add(cvo);
           }
      } catch (Exception e) { e.printStackTrace();
       } finally { dbman.close(con, pstmt, rs); } 
      return list;
   }
   

}