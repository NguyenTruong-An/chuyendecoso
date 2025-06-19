package com.javaweb.enums;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public enum District {
    BA_DINH("Ba Đình"),
    HOAN_KIEM("Hoàn Kiếm"),
    DONG_DA("Đống Đa"),
    HAI_BA_TRUNG("Hai Bà Trưng"),
    THANH_XUAN("Thanh Xuân"),
    HA_DONG("Hà Đông"),
    THANH_TRI("Thanh Trì"),
    CAU_GIAY("Cầu Giấy"),
    TAY_HO("Tây Hồ"),
    LONG_BIEN("Long Biên");

    private final String districtName;

    District(String districtName) {

        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }

    public static Map<String, String> getDistrict(){
        Map<String, String> districts = new TreeMap<>();
        for (District district : District.values()) {
            districts.put(district.toString(), district.districtName);
        }
        return districts;
    }
}
