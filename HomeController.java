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
	
	@RequestMapping(value = "/admin_login.bam", method = RequestMethod.GET)
	public String admin_login(Locale locale, Model model) {
		return "/admin/login/admin_login";
	}
	
	@RequestMapping(value = "/admin_main.bam", method = RequestMethod.GET)
	public String admin_main(Locale locale, Model model) {
		return "/admin/main/admin_main";
	}
	
	@RequestMapping(value = "/my_page.bam", method = RequestMethod.GET)
	public String my_page(Locale locale, Model model) {
		return "/client/member/my_page";
	}
	
	@RequestMapping(value = "/login.bam", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "/client/member/login";
	}
	
	@RequestMapping(value = "/owner_detail.bam", method = RequestMethod.GET)
	public String owner_detail(Locale locale, Model model) {
		return "/client/member/owner_detail";
	}
}
