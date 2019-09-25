package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

@Resource
public interface CommonService {
	/**
	 * 下拉框初始化
	 * 
	 * @param codeType
	 *            编码名
	 * @param all
	 *            是否显示“请选择”
	 * @param orderType
	 *            排序方向，desc or asc
	 * @return
	 */
	public List<Map<String, Object>> getCode(String codeType, boolean all, String orderType);

}
