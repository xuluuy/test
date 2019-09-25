package com.inspur.ssm.util;

public class StringUtil {

	public static final boolean isEmptyString(String s) {
		return (s == null) || (s.trim().equals("")) || (s.equals("null")) || (s.equals("NULL"))
				|| (s.trim().equals("undefined"));
	}
}