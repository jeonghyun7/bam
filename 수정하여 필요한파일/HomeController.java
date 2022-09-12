package com.spring.ex01;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/booking_confirm.bam", method = RequestMethod.GET)
	public String booking_confirm(Locale locale, Model model) {
		return "client/booking/booking_confirm";
	}
	
	@RequestMapping(value = "/booking.bam", method = RequestMethod.GET)
	public String booking(Locale locale, Model model) {
		return "client/booking/booking";
	}
	
	@RequestMapping(value = "/camp_detail.bam", method = RequestMethod.GET)
	public String camp_detail(Locale locale, Model model) {
		return "client/camp/camp_detail";
	}
	
	@RequestMapping(value = "/review_page.bam", method = RequestMethod.GET)
	public String review_page(Locale locale, Model model) {
		return "client/camp/review_page";
	}
	
	@RequestMapping(value = "/tourist_page.bam", method = RequestMethod.GET)
	public String tourist_page(Locale locale, Model model) {
		return "client/camp/tourist_page";
	}
	
	@RequestMapping(value = "/add_camp.bam", method = RequestMethod.GET)
	public String add_camp(Locale locale, Model model) {
		return "client/member/add_camp";
	}
	
	@RequestMapping(value = "/booking_list.bam", method = RequestMethod.GET)
	public String booking_list(Locale locale, Model model) {
		return "client/member/booking_list";
	}
	
	@RequestMapping(value = "/camp_manage.bam", method = RequestMethod.GET)
	public String camp_manage(Locale locale, Model model) {
		return "client/member/camp_manage";
	}
	
	@RequestMapping(value = "/com_inquiry.bam", method = RequestMethod.GET)
	public String com_inquiry(Locale locale, Model model) {
		return "client/member/com_inquiry";
	}
	
	@RequestMapping(value = "/heart_list.bam", method = RequestMethod.GET)
	public String heart_list(Locale locale, Model model) {
		return "client/member/heart_list";
	}
	
	@RequestMapping(value = "/login.bam", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "client/member/login";
	}
	
	@RequestMapping(value = "/modify_camp.bam", method = RequestMethod.GET)
	public String modify_camp(Locale locale, Model model) {
		return "client/member/modify_camp";
	}
	
	@RequestMapping(value = "/my_page.bam", method = RequestMethod.GET)
	public String my_page(Locale locale, Model model) {
		return "client/member/my_page";
	}
	
	@RequestMapping(value = "/owner_detail.bam", method = RequestMethod.GET)
	public String owner_detail(Locale locale, Model model) {
		return "client/member/owner_detail";
	}
	
	@RequestMapping(value = "/sign_up.bam", method = RequestMethod.GET)
	public String singn_up(Locale locale, Model model) {
		return "client/member/sign_up";
	}
	
	@RequestMapping(value = "/map.bam", method = RequestMethod.GET)
	public String map(Locale locale, Model model) {
		return "client/result/map";
	}
	
	@RequestMapping(value = "/map2.bam", method = RequestMethod.GET)
	public String map2(Locale locale, Model model) {
		return "client/result/map2";
	}
	
	@RequestMapping(value = "/mapList.bam", method = RequestMethod.GET)
	public String mapList(Locale locale, Model model) {
		return "client/result/mapList";
	}
	
	@RequestMapping(value = "/Omap.bam", method = RequestMethod.GET)
	public String Omap(Locale locale, Model model) {
		return "client/result/Omap";
	}
	
	@RequestMapping(value = "/index.bam", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "index";
	}
	
	
}
