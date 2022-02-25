package com.baemongsil.ex.lesson05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baemongsil.ex.lesson05.bo.WeatherhisotryBO;

@Controller
public class WeatherhistoryController {

	@Autowired
	private WeatherhisotryBO weatherhisotryBO;
	
	@RequestMapping("/lesson05/test07")
	public String Weatherhistory() {
		return "lesson05/test07";
	}
	
}
