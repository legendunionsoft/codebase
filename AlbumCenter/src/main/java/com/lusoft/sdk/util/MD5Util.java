package com.lusoft.sdk.util;

import com.lusoft.sdk.security.Md5PasswordEncoder;

public class MD5Util {

	private static final Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();
	
	 public static String encodePassword(String rawPass, String salt) {
		 return md5PasswordEncoder.encodePassword(rawPass, salt);
	 }
	 
	 public static boolean isPasswordValid(String encPass, String rawPass, String salt) {
		 return md5PasswordEncoder.isPasswordValid(encPass, rawPass, salt);
	 }
	 
	 public static void main(String[] args) {
		 System.out.println(encodePassword("sgy1988", "1445927569000@lusoft@shaogy"));
	 }
	 
}
