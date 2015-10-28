package com.lusoft.album.constant;

public class Constants {

	public static final class SessionConstant {
		public static final String USER_KEY = "_session_user_key_album";
	}
	
	public static final class TransType {
		public static final int RE_CHARGE = 1;
		public static final int CONSUME = 2;
		public static final int SYSTEM = 3;
	}
	
	public static final class SubjectType {
		public static final int REGISTER = 1;
		public static final int LOGIN = 2;
		public static final int ALBUM = 2;
	}
	
	public static final class TransStatus {
		public static final int PROCESSING = 1;
		public static final int SUCCESS = 2;
		public static final int FAIL = 2;
	}
	
}
