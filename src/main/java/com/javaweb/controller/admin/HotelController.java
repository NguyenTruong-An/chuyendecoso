package com.javaweb.controller.admin;



import com.javaweb.enums.District;
import com.javaweb.enums.HotelLevel;
import com.javaweb.enums.HotelStatus;
import com.javaweb.model.dto.HotelDTO;
import com.javaweb.model.request.HotelSearchRequest;
import com.javaweb.model.response.HotelSearchResponse;
import com.javaweb.service.HotelService;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value="hotelControllerOfAdmin")
public class HotelController {
    @Autowired
    private IUserService userService;

    @Autowired
    private HotelService hotelService;
    @GetMapping("/admin/hotel-list")
    public ModelAndView getAllHotel(@ModelAttribute HotelSearchRequest hotelSearchRequest) {
        ModelAndView modelAndView = new ModelAndView("admin/hotel/list");
        modelAndView.addObject("modelSearch", hotelSearchRequest);
        modelAndView.addObject("staffs", userService.getStaffs());
        modelAndView.addObject("districts", District.getDistrict());
        modelAndView.addObject("hotelStatus", HotelStatus.getStatus());
        modelAndView.addObject("hotelLevel", HotelLevel.getLevel());
        List<HotelSearchResponse> hotelSearchResponse = hotelService.findAll(hotelSearchRequest);
        modelAndView.addObject("hotelSearchResponses", hotelSearchResponse);
        return modelAndView;
    }

    @GetMapping("/admin/hotel-edit")
    public ModelAndView createHotel(@ModelAttribute HotelDTO hotelDTO) {
        ModelAndView modelAndView = new ModelAndView("admin/hotel/edit");
        modelAndView.addObject("hotelEdit", hotelDTO);
        modelAndView.addObject("districts", District.getDistrict());

        return modelAndView;
    }

    @GetMapping("/admin/hotel-edit-{id}")
    public ModelAndView updateHotel(@PathVariable Long id){
        ModelAndView modelAndView = new ModelAndView("admin/hotel/edit");
        //findByID dưới service và convert qua DTO
        modelAndView.addObject("districts", District.getDistrict());
        HotelDTO hotelDTO = hotelService.findById(id);
        modelAndView.addObject("hotelEdit", hotelDTO);
        return modelAndView;
    }
}
