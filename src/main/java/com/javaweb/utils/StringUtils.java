package com.javaweb.utils;

public final class StringUtils {

	public static boolean isNotBlank(String value) {
		if(value!=null && !value.isEmpty()) return true;
		else return false;
	}

	public static boolean isNumber(Object value) {
		try {
			Long number = Long.parseLong(value.toString());
		}catch(Exception e){
			return false;
		}
		return true;
	}

	public static boolean check(Object data) {
		if(data != null && !data.equals(""))return true;
		else return false;
	}

}
