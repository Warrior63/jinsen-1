package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.dao.PetDao;
import com.entity.Pet;
import com.util.DBConnection;

public class PetDaoImpl implements PetDao {

	@Override
    // 获取所有宠物信息
	public List<Pet> getAllpets() throws SQLException {
        List<Pet> lst = new ArrayList<Pet>();
        Connection conn = DBConnection.getConnection();
	    PreparedStatement st;
        String sql=null;
        sql="select * from pet";
        try {
        	st = (PreparedStatement) conn.prepareStatement(sql);  
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            	Pet pet = new Pet();
            	pet.setPet_id(rs.getInt("pet_id"));
            	pet.setPet_kind(rs.getString("pet_kind"));
            	pet.setPet_age(rs.getInt("pet_age"));
            	pet.setPet_sex(rs.getString("pet_sex"));
            	pet.setPrice(rs.getDouble("price"));
            	pet.setDisc(rs.getString("disc"));
            	pet.setVaccine(rs.getString("vaccine"));
            	pet.setNumber(rs.getInt("number"));
            	pet.setExpell(rs.getString("expell"));
            	pet.setIspurebred(rs.getString("ispurebred"));
            	pet.setArea(rs.getString("area"));
            	pet.setPic(rs.getString("pic"));
                lst.add(pet);
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

	@Override
    // 宠物信息的增\删\改
	public boolean updatePets(String sql) throws SQLException {
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
	
	
	 //获取一个宠物的信息
	@Override
	public Pet getOnepet(int pet_id) throws SQLException {
        Connection conn = DBConnection.getConnection();
	    PreparedStatement st;
        String sql=null;
        sql="select * from pet where pet_id="+pet_id+"";
    	Pet pet = new Pet();
        try {
        	st = (PreparedStatement) conn.prepareStatement(sql);  
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            	pet.setPet_id(rs.getInt("pet_id"));
            	pet.setPet_kind(rs.getString("pet_kind"));
            	pet.setPet_age(rs.getInt("pet_age"));
            	pet.setPet_sex(rs.getString("pet_sex"));
            	pet.setPrice(rs.getDouble("price"));
            	pet.setDisc(rs.getString("disc"));
            	pet.setVaccine(rs.getString("vaccine"));
            	pet.setNumber(rs.getInt("number"));
            	pet.setExpell(rs.getString("expell"));
            	pet.setIspurebred(rs.getString("ispurebred"));
            	pet.setArea(rs.getString("area"));
            	pet.setPic(rs.getString("pic"));
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            if (conn!=null){
                conn.close();
            }
        }
        return pet;
	}

	
	
	
}
