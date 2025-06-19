package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
@Getter
@Setter
public class HotelSearchRequest extends AbstractDTO {
    private String name;
    private String district;
    private String ward;
    private String street;
    private Long floorAreaFrom;
    private Long floorAreaTo;
    private Long rentPriceFrom;
    private Long rentPriceTo;
    private Long staffId;
}
