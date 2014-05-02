package com.ewilk.playground.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.ewilk.playground.HealthCheckData;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("website",HealthCheckData.website);
		return mav;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView setCheckService(
		@RequestParam(value="sid", required=true) String sid,
		@RequestParam(value="token", required=true) String token,
		@RequestParam(value="website", required=true) String website,
		@RequestParam(value="from", required=true) String from,
		@RequestParam(value="to", required=true) String to
	){

		ModelAndView mav = new ModelAndView("home");
	
		HealthCheckData.website = website;
		HealthCheckData.twilioSid = sid;
		HealthCheckData.twilioAuthToken = token;
		HealthCheckData.fromNumber = from;
		HealthCheckData.toNumber = to;
		
		mav.addObject("website",HealthCheckData.website);
		
		return mav;

	}
}
