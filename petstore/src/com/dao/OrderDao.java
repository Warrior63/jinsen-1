package com.dao;
import java.sql.SQLException;
import java.util.List;

import com.entity.Order;
import com.entity.Order_Pet_merge;

public interface OrderDao {
	//创建一个订单
	public boolean addOrder(String sql) throws SQLException;
	public List<Order_Pet_merge> queryOrder(String user_id) throws SQLException;
}
