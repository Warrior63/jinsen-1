package com.dao;
import java.sql.SQLException;
import java.util.List;
import com.entity.Pet;

public interface PetDao {
    // 获取所有宠物信息
    public List<Pet> getAllpets() throws SQLException;
    // 宠物信息的增\删\改
    public boolean updatePets(String sql) throws SQLException;
    //获取一个宠物的信息
    public Pet getOnepet(int pet_id) throws SQLException;
    
}