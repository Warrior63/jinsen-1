package com.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {

	private static String driverName="com.mysql.jdbc.Driver";
	private static String userName="root";
	private static String userPwd="123456";
	private static String url="jdbc:mysql://localhost:3306/petstore";
	
	public static Connection getConnection() {
		try {
			Class.forName(driverName);
			Connection con=DriverManager.getConnection(url,userName,userPwd);
			return con;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	 	public static void closeConnection(Connection connection) {
			try {
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	 
	 
		public static void closeStatement(Statement statement) {
			try {
				statement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	 
	 
		public static void closePreparedStatement(PreparedStatement pStatement) {
			try {
				pStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	 
	 
		public static void closeResultSet(ResultSet rs) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	 
	 
}
