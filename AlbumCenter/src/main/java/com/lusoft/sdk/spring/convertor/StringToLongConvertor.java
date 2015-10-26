package com.lusoft.sdk.spring.convertor;

import org.springframework.core.convert.converter.Converter;

public class StringToLongConvertor implements Converter<String, Long> {

	@Override
	public Long convert(String source) {
		return Long.valueOf(source);
	}
	

}
