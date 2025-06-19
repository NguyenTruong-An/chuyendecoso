package com.javaweb.repository.custom;

import com.javaweb.entity.HotelEntity;
import com.javaweb.model.request.HotelSearchRequest;

import java.util.List;

public interface HotelRepositoryCustom {
    List<HotelEntity> findAll(HotelSearchRequest hotelSearchRequest);
}
