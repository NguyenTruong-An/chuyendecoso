package com.javaweb.model.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class AssignmentHotelDTO {
    private Long hotelId;
    private List<Long> staffs;

}
