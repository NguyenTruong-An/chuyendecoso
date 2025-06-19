package com.javaweb.repository;

import com.javaweb.entity.AssignmentHotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AssignmentHotelRepository extends JpaRepository<AssignmentHotelEntity, Long> {
//    List<AssignmentHotelEntity> findByHotelEntity_Id(Long id);
    void deleteByIdIn(List<Long> ids);

    List<AssignmentHotelEntity> findByHotelEntity_Id(Long hotelId);
}
