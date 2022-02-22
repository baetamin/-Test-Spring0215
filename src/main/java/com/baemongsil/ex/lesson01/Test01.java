package com.baemongsil.ex.lesson01;


import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lesson01/test01")
public class Test01 {

	@RequestMapping("/1")
	@ResponseBody
	public String printString() {
		return "테스트 프로젝트 완성";
	}
	
	@RequestMapping("/2")
	@ResponseBody
	public Map<String,Integer> pirntMap(){
		
		Map<String,Integer> map = new HashMap<>();
		map.put("국어", 80);
		map.put("영어", 90);
		map.put("수학", 100);
		
		return map;
	}
	
	
}

