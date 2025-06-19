package com.javaweb.service;

import com.javaweb.entity.HotelEntity;
import com.javaweb.model.dto.HotelDTO;
import com.javaweb.model.request.HotelSearchRequest;
import com.javaweb.model.response.HotelSearchResponse;

import java.util.List;

public interface HotelService {
    List<HotelSearchResponse> findAll(HotelSearchRequest request);
    HotelEntity createHotel(HotelDTO hotelDTO);
    HotelEntity updateHotel(HotelDTO hotelDTO);
    String delete(List<Long> ids);
    HotelDTO findById(Long id);
}
