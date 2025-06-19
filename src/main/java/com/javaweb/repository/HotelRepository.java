package com.javaweb.repository;

import com.javaweb.entity.HotelEntity;
import com.javaweb.repository.custom.HotelRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<HotelEntity, Long>, HotelRepositoryCustom {
    HotelEntity findById(long id);
}
