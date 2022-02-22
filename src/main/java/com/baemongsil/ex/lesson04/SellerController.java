package com.baemongsil.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baemongsil.ex.lesson04.bo.SellerBO;
import com.baemongsil.ex.lesson04.model.Seller;

@Controller
@RequestMapping("/lesson04")
public class SellerController {

	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("/test01")
	public String getSellerview(Model model) {
		
		Seller seller = sellerBO.getSeller();
		model.addAttribute("result",seller);
		return "lesson04/test01";
	}
	
	@RequestMapping("/test01_input")
	public String addSeller() {
		
		return "lesson04/test01_insert";
	}
	
	// 닉네임, 프로필 사진 url, 온도 전달받고 db에 저장하는게  이놈이 할일 
	@PostMapping("/test01/add_seller")
	@ResponseBody
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profileimageUrl") String profileimageUrl,
			@RequestParam("temperature") double temperature
			) {
		int count = sellerBO.addSeller(nickname, profileimageUrl, temperature);
		return "입력성공 : " + count;
	}
//	@GetMapping("/test01/seller_info")
//	public String sellerInfo() {
//		
//	}
	
	
}
