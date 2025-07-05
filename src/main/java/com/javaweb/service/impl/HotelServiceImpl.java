package com.javaweb.service.impl;

import com.javaweb.converter.HotelConverter;
import com.javaweb.entity.AssignmentHotelEntity;
import com.javaweb.entity.HotelEntity;
import com.javaweb.model.dto.HotelDTO;
import com.javaweb.model.request.HotelSearchRequest;
import com.javaweb.model.response.HotelSearchResponse;
import com.javaweb.repository.AssignmentHotelRepository;
import com.javaweb.repository.HotelRepository;
import com.javaweb.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional
public class HotelServiceImpl implements HotelService {
    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private HotelConverter hotelConverter;

    @Autowired
    private AssignmentHotelRepository assignmentHotelRepository;

    @Override
    public List<HotelSearchResponse> findAll(HotelSearchRequest request) {
        List<HotelEntity> hotelEntities = hotelRepository.findAll(request);
        List<HotelSearchResponse> hotelSearchResponses = new ArrayList<>();
        for (HotelEntity hotelEntity : hotelEntities) {
            HotelSearchResponse hotelSearchResponse = hotelConverter.toHotelSearchResponseDTO(hotelEntity);
            hotelSearchResponses.add(hotelSearchResponse);
        }
        return hotelSearchResponses;
    }

    @Override
    public HotelEntity createHotel(HotelDTO hotelDTO) {
        HotelEntity hotelEntity = hotelConverter.toHotelEntity(hotelDTO);
        hotelRepository.save(hotelEntity);
        return hotelEntity;
    }

    @Override
    public HotelEntity updateHotel(HotelDTO hotelDTO) {
        HotelEntity hotelEntity = hotelConverter.toHotelEntity(hotelDTO);
        hotelRepository.save(hotelEntity);
        return hotelEntity;
    }

    @Override
    public String delete(List<Long> ids) {
        for(Long id : ids) {
            HotelEntity hotelEntity = hotelRepository.findById(id).get();
            if(hotelEntity != null) {
                List<AssignmentHotelEntity> assignmentHotelEntities = hotelEntity.getAssignmentHotelEntities();
                assignmentHotelRepository.deleteByIdIn(assignmentHotelEntities.stream().map(i -> i.getId()).collect(Collectors.toList()));
            }
            hotelRepository.delete(hotelEntity);
        }
        return "success";
    }

    @Override
    public HotelDTO findById(Long id) {
        HotelEntity hotelEntity = hotelRepository.findById(id).get();
        HotelDTO hotelDTO = hotelConverter.toHotelDTO(hotelEntity);
        return hotelDTO;
    }
}
