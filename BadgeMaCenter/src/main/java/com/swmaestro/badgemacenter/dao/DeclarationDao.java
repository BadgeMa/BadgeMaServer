package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("DeclarationDao")
public class DeclarationDao extends abDAO {
	public List<Map<String, Object>> selectDeclarationList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectDeclaration", commandMap);
	}
	public List<Map<String, Object>> selectPreDeclarationList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectPreDeclaration", commandMap);
	}
	public List<Map<String, Object>> selectDoingDeclarationList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectDoingDeclaration", commandMap);
	}
	public List<Map<String, Object>> selectBtnNumber(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectBtnNumber", commandMap);
	}
	public List<Map<String, Object>> selectBtnSolveNumber(Map<String, Object> commanMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectBtnSolveNumber", commanMap);
	}
	public List<Map<String, Object>> selectUnNotificationList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("declarationSQL.selectUnNotificationList", commandMap);
	}
	public void deleteDeclaration(Map<String, Object> map) {
		delete("declarationSQL.deleteDeclaration", map);
	}
	public void updateDeclaration(Map<String, Object> map) {
		update("declarationSQL.updateDeclaration", map);
	}
	public void insertDeclaration(Map<String, Object> map) {
		insert("declarationSQL.insertDeclaration", map);
	}
}
