package com.dao;
import java.sql.SQLException;
import com.entity.Users;

public interface UsersDao {
	//查询用户密码是否存在，无论是否存在返回Users类
	public  Users queryUsers(String id,String pwd) throws SQLException;
	//查询手机号是否重复
	public  boolean queryPhone(String phone) throws SQLException;
    //注册新增用户
	public boolean addUser(String sql) throws SQLException;
}
