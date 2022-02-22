package com.ezenshopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenshopping.dto.Wishdto;

public class Wishdao {
   private Wishdao() {
   }

   private static Wishdao ist = new Wishdao();

   public static Wishdao getInstance() {
      return ist;
   }

   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;

   public void updatecartlist(int clistqty, int selectpseq) {
      String sql = "update ezencart set qty=? where pseq=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, clistqty);
         pstmt.setInt(2, selectpseq);
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
   }
   
   
   public int selectwishlist(int prodetailpseq) {
      int result = 0;
      String sql = "select pseq from ezenwish where pseq=?";
      
      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, prodetailpseq);
         rs = pstmt.executeQuery();
         while(rs.next()) {
            result = rs.getInt(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
      return result; 
   }
   

   public int selectclistqty(int wlistpseq) {
      int result = 0;
      String sql = "select qty from ezencart where pseq=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, wlistpseq);
         rs = pstmt.executeQuery();
         while(rs.next()) {
            result = rs.getInt(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
      return result;
   }

   public int selectproductqty(int selectpseq) {
      int productqty = 0;
      String sql = "select qty from ezenproduct where pseq=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, selectpseq);
         rs = pstmt.executeQuery();
         while (rs.next()) {
            productqty = rs.getInt(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }

      return productqty;
   }

   public int selectcartlist(String email) {
      int selectcartlist = 0;
      String sql = "select pseq from ezencart where email=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, email);
         rs = pstmt.executeQuery();
         while (rs.next()) {
            selectcartlist = rs.getInt(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }

      return selectcartlist;
   }

   public int selectwishtlist(int selectpseq, String email) {
      int count = 0;
      String sql = "select qty from ezenwish where pseq=? and email=?";
      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, selectpseq);
         pstmt.setString(2, email);
         rs = pstmt.executeQuery();
         while (rs.next()) {
            count = rs.getInt("qty");
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
      return count;
   }

   public void deletewishlist2(int selectpseq) {
      String sql = "delete from ezenwish where pseq=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, selectpseq);
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
   }

   public void deletewishlist(String wseq) {
      String sql = "delete from ezenwish where wseq=?";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, Integer.parseInt(wseq));
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
   }

   public void insertwishdata(Wishdto wdto) {
      String sql = "insert into ezenwish(wseq, pseq, qty, email) values(ezenwish_seq.nextval ,? ,  ? , ?)";

      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, wdto.getPseq());
         pstmt.setInt(2, wdto.getQty());
         pstmt.setString(3, wdto.getEmail());
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
   }

   public ArrayList<Wishdto> listWish(String email) {
      ArrayList<Wishdto> list = new ArrayList<Wishdto>();
      String sql = "select * from wishview where email=? order by wseq desc";
      try {
         con = dbman.getConnection();
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, email);
         rs = pstmt.executeQuery();
         while (rs.next()) {
            Wishdto wdto = new Wishdto();
            wdto.setPseq(rs.getInt(1));
            wdto.setPname(rs.getString(2));
            wdto.setOriprice(rs.getInt(3));
            wdto.setPrice(rs.getInt(4));
            wdto.setMargin(rs.getInt(5));
            wdto.setSellingarea(rs.getString(6));
            wdto.setContent(rs.getString(7));
            wdto.setColor(rs.getString(8));
            wdto.setKind(rs.getString(9));
            wdto.setImgurl(rs.getString(10));
            wdto.setWseq(rs.getInt(11));
            wdto.setQty(rs.getInt(12));
            wdto.setEmail(rs.getString(13));
            list.add(wdto);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbman.close(con, pstmt, rs);
      }
      return list;
   }

}