package com.javaweb.controller.web;

import com.javaweb.enums.District;
import com.javaweb.enums.HotelStatus;
import com.javaweb.enums.Status;
import com.javaweb.model.request.HotelSearchRequest;
import com.javaweb.model.response.HotelSearchResponse;
import com.javaweb.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
    @Autowired
    private HotelService hotelService;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(HotelSearchRequest hotelSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("modelSearch", hotelSearchRequest);
        mav.addObject("districts", District.getDistrict());
		return mav;
	}

    @GetMapping(value="/gioi-thieu")
    public ModelAndView introducceBuiding(){
        ModelAndView mav = new ModelAndView("web/introduce");
        return mav;
    }

    @GetMapping(value="/san-pham")
    public ModelAndView buidingList(@ModelAttribute HotelSearchRequest hotelSearchRequest){
        ModelAndView modelAndView = new ModelAndView("/web/list");
        modelAndView.addObject("modelSearch", hotelSearchRequest);
        modelAndView.addObject("districts", District.getDistrict());
        modelAndView.addObject("hotelStatus", HotelStatus.getStatus());
        List<HotelSearchResponse> hotelSearchResponse = hotelService.findAll(hotelSearchRequest);
        modelAndView.addObject("hotelSearchResponses", hotelSearchResponse);
        return modelAndView;
    }

    @GetMapping(value="/tin-tuc")
    public ModelAndView news(){
        ModelAndView mav = new ModelAndView("/web/news");
        return mav;
    }

    @GetMapping(value="/lien-he")
    public ModelAndView contact(){
        ModelAndView mav = new ModelAndView("/web/contact");
        return mav;
    }

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView mav = new ModelAndView("register");
        return mav;
    }

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
}
