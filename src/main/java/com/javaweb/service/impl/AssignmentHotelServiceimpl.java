package com.javaweb.service.impl;

import com.javaweb.entity.AssignmentHotelEntity;
import com.javaweb.entity.HotelEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.AssignmentHotelDTO;
import com.javaweb.repository.AssignmentHotelRepository;
import com.javaweb.repository.HotelRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.AssignmentHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AssignmentHotelServiceimpl implements AssignmentHotelService {
    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AssignmentHotelRepository assignmentHotelRepository;

    @Override
    public String updateAssignmentHotel(AssignmentHotelDTO assignmentHotelDTO) {
        HotelEntity hotelEntity = hotelRepository.findById(assignmentHotelDTO.getHotelId()).get();
        if (hotelEntity == null) {
            return "failed";
        }
        List<AssignmentHotelEntity> assignmentHotelEntityListOld = assignmentHotelRepository.findByHotelEntity_Id(assignmentHotelDTO.getHotelId());
        for (AssignmentHotelEntity assignmentHotelEntity : assignmentHotelEntityListOld) {
            assignmentHotelRepository.delete(assignmentHotelEntity);
        }
        for(Long staffId : assignmentHotelDTO.getStaffs()){
            UserEntity userEntity = userRepository.findById(staffId).get();
            AssignmentHotelEntity assignmentHotelEntity = new AssignmentHotelEntity();
            assignmentHotelEntity.setHotelEntity(hotelEntity);
            assignmentHotelEntity.setUserEntity(userEntity);
            assignmentHotelRepository.save(assignmentHotelEntity);
        }
        return "success";
    }
}
