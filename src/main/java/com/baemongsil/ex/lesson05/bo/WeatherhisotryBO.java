package com.baemongsil.ex.lesson05.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.lesson05.dao.WeatherhisotryDAO;
import com.baemongsil.ex.lesson05.model.Weatherhisotry;

@Service
public class WeatherhisotryBO {

	@Autowired
	private WeatherhisotryDAO weatherhisotryDAO;
	
	public Weatherhisotry getWeatherhisotry() {
		return weatherhisotryDAO.Weather();
	}
}
