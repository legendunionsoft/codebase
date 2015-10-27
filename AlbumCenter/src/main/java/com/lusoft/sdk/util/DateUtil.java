package com.lusoft.sdk.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	
	public static final String format(Date date){
		return sdf.format(date);
	}
	
}
