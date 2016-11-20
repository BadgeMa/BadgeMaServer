package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("AdviceDao")
public class AdviceDao extends abDAO{
	public List<Map<String, Object>> selectAdviceList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("adviceSQL.selectAdviceList", commandMap);
	}
	public List<Map<String, Object>> selectAdviceContentList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("adviceSQL.selectAdviceContentList", commandMap);
	}
	public List<Map<String, Object>> selectAdvicePassword(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("adviceSQL.selectAdvicePassword", commandMap);
	}
	public void insertAdviceContent(Map<String, Object> map) {
		insert("adviceSQL.insertAdviceContent", map);
	}
}
