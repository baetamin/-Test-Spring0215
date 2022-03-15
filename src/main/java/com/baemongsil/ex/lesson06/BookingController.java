package com.baemongsil.ex.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.baemongsil.ex.lesson06.bo.BookingBO;
import com.baemongsil.ex.lesson06.model.Booking;

@Controller
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	
	@GetMapping("/lesson06/booking_list")
	public String bookingList(Model model) {
		List<Booking> bookingList = bookingBO.getBookingList();

		model.addAttribute("bookingList" , bookingList);
		return "lesson06/bookingList";
	}
	
	
}
