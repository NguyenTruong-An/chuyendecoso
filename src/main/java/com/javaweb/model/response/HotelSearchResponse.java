package com.javaweb.model.response;


import com.javaweb.model.dto.AbstractDTO;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class HotelSearchResponse extends AbstractDTO {
	private Long id;
	private Date createdDate;
	private String name;
	private String address;
	private Long floorArea;
    private String emptyArea;
	private String description;
    private Long rentPrice;

}
