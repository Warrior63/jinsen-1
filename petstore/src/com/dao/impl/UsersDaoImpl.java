package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;
import com.dao.UsersDao;
import com.entity.Users;
import com.util.DBConnection;

public class UsersDaoImpl implements UsersDao {

	@Override
	//查询用户密码是否存在，无论是否存在返回Users类
	public Users queryUsers(String id,String pwd) throws SQLException {
		    String sql = "select * from users where (id='"+id+"' or phone='"+id+"') and pwd='"+pwd+"'";
			System.out.println("Usersdao成功接入");
			System.out.println("手机号码验证"+id);
			System.out.println("正在进行密码验证");

	        Connection connection = null;
	        PreparedStatement pStatement = null;
	        ResultSet rs = null;
	        Users u = new Users();
	        try {
	            connection = DBConnection.getConnection();
	            pStatement = connection.prepareStatement(sql);
	            rs = pStatement.executeQuery();
	            while (rs.next()) {
	            	u.setId(rs.getString("id"));
	            	u.setName(rs.getString("name"));
	            	u.setPwd(rs.getString("pwd"));
	            	u.setPhone(rs.getString("phone"));
	            	u.setAdmin(rs.getInt("admin"));
	            }
	            return u;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	        	DBConnection.closeResultSet(rs);
	        	DBConnection.closePreparedStatement(pStatement);
	        	DBConnection.closeConnection(connection);
	        }
	}

	@Override
	public boolean queryPhone(String phone) throws SQLException {
		System.out.println("Usersdao成功接入");
		String sql = "select * from users where phone='"+phone+"'";
        Connection connection = null;
        PreparedStatement pStatement = null;
        ResultSet rs = null;
        try {
            connection = DBConnection.getConnection();
            pStatement = connection.prepareStatement(sql);
            rs = pStatement.executeQuery();
            while (rs.next()) {
            	return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
        	DBConnection.closeResultSet(rs);
        	DBConnection.closePreparedStatement(pStatement);
        	DBConnection.closeConnection(connection);
        }
		
	}

	@Override
	public boolean addUser(String sql) throws SQLException {
        Connection conn = DBConnection.getConnection();
        try {          
            Statement st = conn.createStatement();     
            int cnt = st.executeUpdate(sql);
            if(cnt>0) {
            return true;
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }finally {
            if (conn!=null)
                conn.close();
        }
        return false;

	}

}
