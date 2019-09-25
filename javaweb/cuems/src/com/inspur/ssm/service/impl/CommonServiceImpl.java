package com.inspur.ssm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.CommonMapper;
import com.inspur.ssm.service.CommonService;
import com.inspur.ssm.util.StringUtil;

@Service("commonService")
public class CommonServiceImpl implements CommonService {
	@Autowired
	private CommonMapper commonMapper;

	@Override
	public List<Map<String, Object>> getCode(String codeType, boolean all, String orderType) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("codeType", codeType);
		if (!StringUtil.isEmptyString(orderType)) {
			paramMap.put("orderType", orderType);
		}
		List<Map<String, Object>> ls = null;
		ls = commonMapper.getPCodeNumber(paramMap);
		if (all) {
			Map<String, Object> o = new HashMap<String, Object>();
			o.put("BM", "");
			o.put("MC", "---请选择---");
			ls.add(0, o);
		}
		return ls;
	}

}
