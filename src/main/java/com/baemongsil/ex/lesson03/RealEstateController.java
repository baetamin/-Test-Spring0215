package com.baemongsil.ex.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baemongsil.ex.lesson03.bo.RealEstateBO;
import com.baemongsil.ex.lesson03.model.RealEstate;

@Controller
@RequestMapping("/lesson03/test01")
public class RealEstateController {
	
	
	@Autowired
	private RealEstateBO realEstateBO;

	
	@RequestMapping("/1")
	@ResponseBody
	public RealEstate realEstate(@RequestParam("id") int id) {
		return realEstateBO.getRealEstate(id);
	}
	
	@ResponseBody
	@RequestMapping("/2")
	public List<RealEstate> realEstateByRentPrice(@RequestParam("rent") int rentPrice){
		return realEstateBO.getRealEstateByRentPrice(rentPrice);		
	}
	
	
	@RequestMapping("/3")
	@ResponseBody
	public List<RealEstate> realEstateByAreaPrice(
			@RequestParam("area") int area,
			@RequestParam("price") int price) {
		 return realEstateBO.getRealEstateByAreaPrice(area, price);
		
	}
	
	
	@RequestMapping("/4")
	@ResponseBody
	public String addRealEstate() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지오");
		realEstate.setArea(89);
		
		int count = realEstateBO.addRealEstateByObject(realEstate);
		
		return "insert 성공 : " + count;
	}
	
	
	
	
}
