package com.baemongsil.ex.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lesson01/test01")
public class Test01RestController {

	@RequestMapping("/lesson01/test01/3")
	public List<Map<String, Object>> printMap(){
		
		List<Map<String, Object>> list = new ArrayList<>();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "봉준호" );
		map.put("time", 131);
		map.put("title", "기생충");
		list.add(map);
		
		Map<String, Object> map2 = new HashMap<>();
		map2.put("rate", 0);
		map2.put("director", "로베르토 베니니 " );
		map2.put("time", 116);
		map2.put("title", "인생은 아름다워 ");
		list.add(map2);
		
		
		return list;
		
	}
	
//	@RequestMapping("/4")
//	public List<BoardContent> printListObject(){
//		
//		List<BoardContent> list = new ArrayList<>();
//		
//		BoardContent boardcontent1 = new BoardContent();
//		boardcontent1.setTitle("안녕하세요 가입인사 드립니다. ");
//		boardcontent1.setContent("블니다. ");
//		boardcontent1.setUser("배준 ");
//		list.add(boardContent1);
//		
//		BoardContent boardcontent2 = new BoardContent();
//		boardcontent2.setTitle("안녕하세요 가입인사 드립니다. ");
//		boardcontent2.setContent("블니다. ");
//		boardcontent2.setUser("배준 ");
//		list.add(boardContent2);
//		
//		BoardContent boardcontent3 = new BoardContent();
//		boardcontent3.setTitle("안녕하세요 가입인사 드립니다. ");
//		boardcontent3.setContent("블니다. ");
//		boardcontent3.setUser("배준 ");
//		list.add(boardContent3);
//		
//	}
//	 @RequestMapping("/5")
//	public ResponseEntity<Boardcontent> entity(){
//		Boardcontent boardcontent1 = new Boardcontent();
//		boardcontent1.setTitle("안녕하세요 가입인사 드립니다. ");
//		boardcontent1.setContent("블니다. ");
//		boardcontent1.setUser("배준 ");
//		
//		ResponseEntity<Boardcontent> entity = new ResponseEntity<>
//	}
	
}
