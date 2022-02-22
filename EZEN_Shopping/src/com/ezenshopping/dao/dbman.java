package com.ezenshopping.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class dbman {
	public static Connection getConnection() {
		Connection con = null;
		try {
		
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		con=ds.getConnection();
		}catch (NamingException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public static void close(Connection con , PreparedStatement pre, ResultSet re) {
		try {
			if(re!=null)re.close();
			if(pre!=null)pre.close();
			if(con!=null)con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
