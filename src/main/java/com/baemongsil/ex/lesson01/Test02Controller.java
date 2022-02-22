package com.baemongsil.ex.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test02Controller {

		@RequestMapping("/lesson01/test02/1")
		public String view() {
			return "lesson01/test02/test02";
		}
}
