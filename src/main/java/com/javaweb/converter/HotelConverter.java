package com.javaweb.converter;

import com.javaweb.entity.HotelEntity;
import com.javaweb.enums.District;
import com.javaweb.model.dto.HotelDTO;
import com.javaweb.model.response.HotelSearchResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Component
public class HotelConverter {
    @Autowired
    private ModelMapper modelMapper;

    @PersistenceContext
    private EntityManager entityManager;

    // DTO->ENTITY
    public HotelEntity toHotelEntity(HotelDTO hotelDTO) {
        HotelEntity hotelEntity = modelMapper.map(hotelDTO, HotelEntity.class);
        return hotelEntity;
    }

    // ENTITY->DTO
    public HotelSearchResponse toHotelSearchResponseDTO(HotelEntity hotelEntity) {
        HotelSearchResponse hotelSearchResponse = modelMapper.map(hotelEntity, HotelSearchResponse.class);
        District districtEnum = District.valueOf(hotelEntity.getDistrict());
        hotelSearchResponse.setAddress(hotelEntity.getStreet() + "," + hotelEntity.getWard() + ","
                + districtEnum.getDistrictName());
        return hotelSearchResponse;
    }

    //ENTITY -> BuildingDTO
    public HotelDTO toHotelDTO(HotelEntity hotelEntity) {
        HotelDTO hotelDTO = modelMapper.map(hotelEntity, HotelDTO.class);
        return hotelDTO;
    }

}
