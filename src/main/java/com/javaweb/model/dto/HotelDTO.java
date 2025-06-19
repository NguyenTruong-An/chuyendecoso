package com.javaweb.model.dto;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
public class HotelDTO extends AbstractDTO{
    private Long id;
    @NotBlank(message = "Building name not be blank")
    private String name;
    private String street;
    private String ward;
    @NotBlank(message = "District not be blank")
    private String district;
    private Long floorArea;
    private String description;
    @NotNull(message = "Rent price not be null")
    @Min(value = 5, message = "Rent price must >= 5")
    private Long rentPrice;
    private String image;
    private String imageBase64;
    private String imageName;

}