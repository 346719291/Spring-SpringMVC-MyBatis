package com.common.utils;

public class UUID {
	public static String uid() {
		 String uuid = java.util.UUID.randomUUID().toString().replaceAll("-", "");
		return uuid;
		
	}
	
}
