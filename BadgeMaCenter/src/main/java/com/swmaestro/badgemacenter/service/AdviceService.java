package com.swmaestro.badgemacenter.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.swmaestro.badgemacenter.dao.AdviceDao;

@Service("AdviceService")
public class AdviceService {
	@Resource(name = "AdviceDao")
	private AdviceDao dao;

	public Object good() {
		// TODO Auto-generated method stub
		return "BadgeMa";
	}
	public List<Map<String, Object>> selectAdviceList(Map<String, Object> Map) throws Exception {
		return dao.selectAdviceList(Map);
	}
	public List<Map<String, Object>> selectAdviceContentList(Map<String, Object> Map) throws Exception {
		return dao.selectAdviceContentList(Map);
	}
	public void insertAdviceContent(Map<String, Object> map) {
		dao.insertAdviceContent(map);
	}
}
