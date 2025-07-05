package com.javaweb.enums;

import java.util.LinkedHashMap;
import java.util.Map;

public enum HotelLevel {
    A("Hạng A"),
    B("Hạng B"),
    C("Hạng C"),
    D("Hạng D"),
    E("Hạng E"),
    F("Hạng F");

    private final String hotelLevelName;
    HotelLevel(String hotelStatusName) {this.hotelLevelName = hotelStatusName;}
    public String getHotelLevelName() {return hotelLevelName;}

    public static Map<String,String> getLevel() {
        Map<String,String> map = new LinkedHashMap<>();
        for (HotelLevel level : HotelLevel.values()) {
            map.put(level.toString(), level.getHotelLevelName());
        }
        return map;
    }
}
