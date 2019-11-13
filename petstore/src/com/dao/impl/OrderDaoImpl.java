package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.dao.OrderDao;
import com.entity.Order_Pet_merge;
import com.entity.Pet;
import com.util.DBConnection;

public class OrderDaoImpl implements OrderDao {

	@Override
	public boolean addOrder(String sql) throws SQLException {
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

	@Override
	public List<Order_Pet_merge> queryOrder(String user_id) throws SQLException {
		List<Order_Pet_merge> lst = new ArrayList<Order_Pet_merge>();
        Connection conn = DBConnection.getConnection();
	    PreparedStatement st;
        String sql=null;
        sql="select * from pet a,`order` b where a.pet_id=b.pet_id and user_id="+user_id+"";
        try {
        	st = (PreparedStatement) conn.prepareStatement(sql);  
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            	Order_Pet_merge or = new Order_Pet_merge();
            	or.setOrder_id(rs.getInt("order_id"));
            	or.setAddress(rs.getString("address"));
            	or.setPhone(rs.getString("phone"));
            	or.setOrder_time(rs.getString("order_time"));
            	or.setStatus(rs.getString("status"));
            	or.setUser_id(rs.getString("user_id"));
            	or.setOrder_name(rs.getString("order_name"));
            	or.setPet_id(rs.getInt("pet_id"));
            	or.setPet_kind(rs.getString("pet_kind"));
            	or.setPet_age(rs.getInt("pet_age"));
            	or.setPet_sex(rs.getString("pet_sex"));
            	or.setPrice(rs.getDouble("price"));
            	or.setDisc(rs.getString("disc"));
            	or.setVaccine(rs.getString("vaccine"));
            	or.setNumber(rs.getInt("number"));
            	or.setExpell(rs.getString("expell"));
            	or.setIspurebred(rs.getString("ispurebred"));
            	or.setArea(rs.getString("area"));
            	or.setPic(rs.getString("pic"));
                lst.add(or);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
	}

	
}
