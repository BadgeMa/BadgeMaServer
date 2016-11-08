package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("DeclarationDao")
public class DeclarationDao extends abDAO {
	public List<Map<String, Object>> selectDeclarationList(Map<String, Object> commandMap) {
		return (List<Map<String,Object>>)selectList("declarationSQL.selectDeclaration", commandMap);
	}
	public List<Map<String, Object>> selectReportNumber(Map<String, Object> commandMap) {
		return (List<Map<String,Object>>)selectList("declarationSQL.selectReportNumber", commandMap);
	}
	public void deleteDeclaration(Map<String, Object> map) {
		delete("declarationSQL.deleteDeclaration",map);
	}
}
