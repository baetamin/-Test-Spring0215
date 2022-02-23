package com.baemongsil.ex.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.baemongsil.ex.lesson04.model.Seller;

@Repository
public interface SellerDAO {

	public Seller sellerview();
	
	public int insertSeller(
			@Param("nickname") String nickname,
			@Param("profileimageUrl") String profileimageUrl,
			@Param("temperature") double temperature
			);
	
	public Seller selectSeller(@Param("id") int id);
	
}


