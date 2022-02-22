package com.baemongsil.ex.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.lesson02.dao.StoreDAO;
import com.baemongsil.ex.lesson02.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreDAO storeDAO;
	
	
	public List<Store> getStoreList(){
		return storeDAO.selectStoreList();
	}
	
}
