package com.baemongsil.ex.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.lesson06.dao.FavoriteDAO;
import com.baemongsil.ex.lesson06.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	private FavoriteDAO favoriteDAO;

	public List<Favorite> getFavoriteList(){
		return favoriteDAO.selectFavoriteList();
	}
	
}
