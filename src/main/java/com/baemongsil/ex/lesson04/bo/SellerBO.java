package com.baemongsil.ex.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.lesson04.dao.SellerDAO;
import com.baemongsil.ex.lesson04.model.Seller;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	public Seller getSeller() {
		return sellerDAO.sellerview();
	}

	public int addSeller(String nickname,String profileimageUrl, double temperature) {
		return sellerDAO.insertSeller(nickname, profileimageUrl, temperature);
	}
	
	public Seller sellerGet(int id) {
		return sellerDAO.selectSeller(id);
	}

	
}	

