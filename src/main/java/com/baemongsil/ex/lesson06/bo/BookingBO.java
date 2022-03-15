package com.baemongsil.ex.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.lesson06.dao.BookingDAO;
import com.baemongsil.ex.lesson06.model.Booking;

@Service
public class BookingBO {

	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBookingList(){
		return bookingDAO.selectBookingList();
	}
	
}
