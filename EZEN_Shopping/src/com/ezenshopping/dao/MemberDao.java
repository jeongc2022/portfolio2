package com.ezenshopping.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.pagingdto;
import com.ezenshopping.dao.MemberDao;

public class MemberDao {
   private MemberDao() { }
   private static MemberDao ist = new MemberDao();
   public static MemberDao getInstance() {    return ist;   }
   
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   public int getAllCount(String key) {
		int count = 0;
		String sql="select count(*) as cnt from ezenuser where name like ?";
		try {
			con=dbman.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, "%"+key+"%");
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
   
   
   public ArrayList<MemberVO> getAllMember(pagingdto paging,String key){
	  ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	  int startNum = paging.getStartNum();
	  int endNum = paging.getEndNum();
	  String sql="select * from (select * from (select ROWNUM as row_num, ezenuser.* from (select * from ezenuser where name like ?) ezenuser)"
				+ " where row_num >=? )"
				+ " where row_num <=?";
	  try {
		  con=dbman.getConnection();
		  pstmt=con.prepareStatement(sql);
		  pstmt.setString(1, "%"+key+"%");
		  pstmt.setInt(2, startNum);
		  pstmt.setInt(3, endNum);
		  rs = pstmt.executeQuery();
		  while(rs.next()) {
			  MemberVO mvo = new MemberVO();
			  	 mvo.setName(rs.getString("name"));
	             mvo.setBirth(rs.getString("birth"));
	             mvo.setPhone(rs.getString("phone"));
	             mvo.setGender(rs.getString("gender"));
	             mvo.setDoroaddress(rs.getString("doroaddress"));
	             mvo.setAddress(rs.getString("address"));
	             mvo.setPostnum(rs.getString("postnum"));
	             mvo.setZip_num(rs.getInt("zip_num"));
	             mvo.setPrefershop(rs.getString("prefershop"));
	             mvo.setEmail(rs.getString("email"));
	             mvo.setPwd(rs.getString("pwd"));
	             list.add(mvo);
			  
		  }
	  }catch (Exception e) {
		e.printStackTrace();
	}finally {
		dbman.close(con, pstmt, rs);
	}
	  return list;
   }
   
   public void deletemember(String pwd) {
	      String sql = "delete from ezenuser where pwd=?";
	      
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, pwd);
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	      
	      
	   }
	   
	   
	   
	   
	   public void updatemember5(MemberVO mvo) {
	      String sql = "update ezenuser set name=?, birth=?, gender=? , doroaddress=?, address=?, postnum=? " 
	               +" ,prefershop=?, pwd=? , phone=? where email=?";
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mvo.getName());
	         pstmt.setString(2, mvo.getBirth());
	         pstmt.setString(3, mvo.getGender());
	         pstmt.setString(4, mvo.getDoroaddress());
	         pstmt.setString(5, mvo.getAddress());
	         pstmt.setString(6, mvo.getPostnum());
	         pstmt.setString(7, mvo.getPrefershop());
	         pstmt.setString(8, mvo.getPwd());
	         pstmt.setString(9, mvo.getPhone());
	         pstmt.setString(10, mvo.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	     
	   }
	   
	   
	   
	   
	   public void updatemember4(MemberVO mvo) {
	      String sql = "update ezenuser set name=?, birth=?, gender=? , doroaddress=?, address=?, postnum=? " 
	               +" ,prefershop=?, pwd=? , phone=? where email=?";
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mvo.getName());
	         pstmt.setString(2, mvo.getBirth());
	         pstmt.setString(3, mvo.getGender());
	         pstmt.setString(4, mvo.getDoroaddress());
	         pstmt.setString(5, mvo.getAddress());
	         pstmt.setString(6, mvo.getPostnum());
	         pstmt.setString(7, mvo.getPrefershop());
	         pstmt.setString(8, mvo.getPwd());
	         pstmt.setString(9, mvo.getPhone());
	         pstmt.setString(10, mvo.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	     
	   }
	   
	   
	   
	   
	   
	   
	   public void updatemember3(MemberVO mvo) {
	      String sql = "update ezenuser set name=?, birth=?, gender=? , doroaddress=?, address=?, postnum=? " 
	               +" ,prefershop=?, pwd=? , phone=? where email=?";
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mvo.getName());
	         pstmt.setString(2, mvo.getBirth());
	         pstmt.setString(3, mvo.getGender());
	         pstmt.setString(4, mvo.getDoroaddress());
	         pstmt.setString(5, mvo.getAddress());
	         pstmt.setString(6, mvo.getPostnum());
	         pstmt.setString(7, mvo.getPrefershop());
	         pstmt.setString(8, mvo.getPwd());
	         pstmt.setString(9, mvo.getPhone());
	         pstmt.setString(10, mvo.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	     
	   }
	   
	   
	   
	   
	   
	   public void updatemember2(MemberVO mvo) {
	      String sql = "update ezenuser set name=?, birth=?, gender=? , doroaddress=?, address=?, postnum=? " 
	               +" ,prefershop=?, pwd=? , phone=? where email=?";
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mvo.getName());
	         pstmt.setString(2, mvo.getBirth());
	         pstmt.setString(3, mvo.getGender());
	         pstmt.setString(4, mvo.getDoroaddress());
	         pstmt.setString(5, mvo.getAddress());
	         pstmt.setString(6, mvo.getPostnum());
	         pstmt.setString(7, mvo.getPrefershop());
	         pstmt.setString(8, mvo.getPwd());
	         pstmt.setString(9, mvo.getPhone());
	         pstmt.setString(10, mvo.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	     
	   }
	   
	   
	   
	   
	   
	   public void updatemember1(MemberVO mvo) {
	      String sql = "update ezenuser set name=?, birth=?, gender=? , doroaddress=?, address=?, postnum=? " 
	                     +" ,prefershop=?, pwd=? , phone=? where email=?";
	      try {
	         con = dbman.getConnection();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mvo.getName());
	         pstmt.setString(2, mvo.getBirth());
	         pstmt.setString(3, mvo.getGender());
	         pstmt.setString(4, mvo.getDoroaddress());
	         pstmt.setString(5, mvo.getAddress());
	         pstmt.setString(6, mvo.getPostnum());
	         pstmt.setString(7, mvo.getPrefershop());
	         pstmt.setString(8, mvo.getPwd());
	         pstmt.setString(9, mvo.getPhone());
	         pstmt.setString(10, mvo.getEmail());
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         dbman.close(con, pstmt, rs);
	      }
	     
	   }
   
   
   
   public int resetPassword(String pwd, String phone) {
	      int result = 0;
	      System.out.println("DAOF:"+result);
	      String sql = "update ezenuser set pwd=? where phone = ?";
	      try {
	            con = dbman.getConnection();
	            pstmt = con.prepareStatement(sql); 
	            pstmt.setString(1,pwd);
	            pstmt.setString(2,phone);
	            result = pstmt.executeUpdate();
	      } catch (Exception e) { e.printStackTrace();
	       } finally { dbman.close(con, pstmt, rs); }   
	      return result;
	   }
	   
	   
	   //----------------------------------------------------------------------
	   public MemberVO getMemberpwd(String phone,String email) {
	         MemberVO mvo = new MemberVO();
	         String sql = "select * from ezenuser where phone=? and email=?"; 
	         try {
	               con = dbman.getConnection();
	               pstmt = con.prepareStatement(sql); 
	               pstmt.setString(1,  phone);
	               pstmt.setString(2,  email);
	               rs = pstmt.executeQuery();
	               if( rs.next() ) {
	                     mvo.setName(rs.getString("name"));
	                      mvo.setBirth(rs.getString("birth"));
	                      mvo.setPhone(rs.getString("phone"));
	                      mvo.setGender(rs.getString("gender"));
	                      mvo.setDoroaddress(rs.getString("doroaddress"));
	                      mvo.setAddress(rs.getString("address"));
	                      mvo.setPostnum(rs.getString("postnum"));
	                      mvo.setZip_num(rs.getInt("zip_num"));
	                      mvo.setPrefershop(rs.getString("prefershop"));
	                      mvo.setEmail(rs.getString("email"));
	                      mvo.setPwd(rs.getString("pwd"));
	               }
	         } catch (Exception e) { e.printStackTrace();
	          } finally { dbman.close(con, pstmt, rs); }   
	         return mvo;
	      }
	   
	   
   
   
   public MemberVO getMemberByphone(String phone) {
	      MemberVO mvo = new MemberVO();
	      String sql = "select * from ezenuser where phone=?"; 
	      try {
	            con = dbman.getConnection();
	            pstmt = con.prepareStatement(sql); 
	            pstmt.setString(1,  phone);
	            rs = pstmt.executeQuery();
	            if( rs.next() ) {
	                  mvo.setName(rs.getString("name"));
	                   mvo.setBirth(rs.getString("birth"));
	                   mvo.setPhone(rs.getString("phone"));
	                   mvo.setGender(rs.getString("gender"));
	                   mvo.setDoroaddress(rs.getString("doroaddress"));
	                   mvo.setAddress(rs.getString("address"));
	                   mvo.setPostnum(rs.getString("postnum"));
	                   mvo.setZip_num(rs.getInt("zip_num"));
	                   mvo.setPrefershop(rs.getString("prefershop"));
	                   mvo.setEmail(rs.getString("email"));
	                   mvo.setPwd(rs.getString("pwd"));
	            }
	      } catch (Exception e) { e.printStackTrace();
	       } finally { dbman.close(con, pstmt, rs); }   
	      return mvo;
	   }
  
   
   public MemberVO getuser(String email) {
	   MemberVO mvo = new MemberVO();
	      String sql = "select * from ezenuser where email=?"; 
	      try {
	         con = dbman.getConnection();
	         System.out.println(con);
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, email);
	          rs = pstmt.executeQuery();
	          if(rs.next()) {
	             mvo.setName(rs.getString("name"));
	             mvo.setBirth(rs.getString("birth"));
	             mvo.setPhone(rs.getString("phone"));
	             mvo.setGender(rs.getString("gender"));
	             mvo.setDoroaddress(rs.getString("doroaddress"));
	             mvo.setAddress(rs.getString("address"));
	             mvo.setPostnum(rs.getString("postnum"));
	             mvo.setZip_num(rs.getInt("zip_num"));
	             mvo.setPrefershop(rs.getString("prefershop"));
	             mvo.setEmail(rs.getString("email"));
	             mvo.setPwd(rs.getString("pwd"));
	          }
	            
	      } catch (SQLException e) { e.printStackTrace();
	      } finally { dbman.close(con, pstmt, rs); }
	      return mvo;
	   }
   
   public int confirmEmail(String email) {
		int result = 0;
		String sql = "select * from ezenuser where email=?";
		try {
		      con = dbman.getConnection();
		      pstmt = con.prepareStatement(sql);
		      pstmt.setString(1,email);
		      rs = pstmt.executeQuery();
		      if (rs.next())result = 1; // 중복아이디 존재 
		} catch (Exception e) { e.printStackTrace();
	    } finally { dbman.close(con, pstmt, rs); }
		return result;
	}
   
   
   //----------------------------------------------
   public void insertMember(MemberVO mvo) {
      String sql = "insert into ezenuser(name, birth, phone, gender,doroaddress, address,postnum,zip_num,prefershop, email, pwd) values(?, ?, ?, ?, ?, ?, ?,?,?,?,?)";
      try {
            con = dbman.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, mvo.getName());      
           pstmt.setString(2, mvo.getBirth());
           pstmt.setString(3, mvo.getPhone());           
           pstmt.setString(4, mvo.getGender());
           pstmt.setString(5, mvo.getDoroaddress());
           pstmt.setString(6, mvo.getAddress());
           pstmt.setString(7, mvo.getPostnum());
           pstmt.setInt(8, mvo.getZip_num());
           pstmt.setString(9, mvo.getPrefershop());
           pstmt.setString(10, mvo.getEmail());
           pstmt.setString(11, mvo.getPwd());
           
           pstmt.executeUpdate();
      } catch (Exception e) { e.printStackTrace();
       } finally { dbman.close(con, pstmt, rs); }   
   }
   
   
}