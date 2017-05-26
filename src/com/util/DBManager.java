package com.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.sql.DataSource;
import javax.naming.InitialContext;

public class DBManager {
	
	private static DBManager instance = null;
	private DBManager(){
	}
	
	public static DBManager getInstance(){
		if( instance == null ){
			instance = new DBManager();
		}
		return instance;
	}
	
	public Connection getConnection() throws SQLException{
		DataSource ds = null;
		Connection conn = null;
		try{
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/MySQLDB");
			conn = ds.getConnection();
		}catch (Exception ex) {
			System.out.println("DB Connection fail :"+ex);
		}
		return conn;
	}
	
	//수행후 리소스 해제 메서드
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){
		try{
			if(rs != null){
				rs.close();
			}
			if(pstmt != null){
				pstmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}catch (Exception e) {
			System.out.println("db close err:"+e.getMessage());
		}
	}
}
