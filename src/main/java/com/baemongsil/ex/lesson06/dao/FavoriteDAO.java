package com.baemongsil.ex.lesson06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baemongsil.ex.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {

	
	public List<Favorite> selectFavoriteList();
	
	
}
