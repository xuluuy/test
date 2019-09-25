package com.inspur.ssm.util;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.inspur.ssm.service.CommonService;

@Component
public class CommonUtil {
	@Autowired
	private CommonService commonService;
	private static CommonUtil commonUtil;

	@PostConstruct
	public void init() {
		commonUtil = this;
		commonUtil.commonService = this.commonService;
	}

	public static List<Map<String, Object>> getCode(String codeType, boolean allOption, String orderType) {
		return commonUtil.commonService.getCode(codeType, allOption, orderType);
	}
}
