package com.javaweb.enums;

import java.util.LinkedHashMap;
import java.util.Map;

public enum HotelStatus {
    CON_TRONG("Còn trống"),
    DA_HET_PHONG("Đã hết phòng");

    private final String hotelStatusName;
    HotelStatus(String hotelStatusName) {this.hotelStatusName = hotelStatusName;}
    public String getHotelStatusName() {return hotelStatusName;}

    public static Map<String,String> getStatus() {
        Map<String,String> map = new LinkedHashMap<>();
        for (HotelStatus status : HotelStatus.values()) {
            map.put(status.toString(), status.getHotelStatusName());
        }
        return map;
    }
}
