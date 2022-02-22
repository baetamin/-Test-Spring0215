package com.baemongsil.ex.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.baemongsil.ex.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(@Param("id") int id);
	
	
	public List<RealEstate> selectRealEstateByRentPrice(@Param("rentPrice") int rentPrice);
	
	
	
	public List<RealEstate> selectRealEstateByAreaPrice(
			@Param("area") int area,
			@Param("price") int pirce);
	
	public int insertRealEstate(RealEstate realEstate);
		
	
}
