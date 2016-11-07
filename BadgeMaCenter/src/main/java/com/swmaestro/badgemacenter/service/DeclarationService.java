package com.swmaestro.badgemacenter.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.swmaestro.badgemacenter.dao.DeclarationDao;

@Service("DeclarationService")
public class DeclarationService {
	@Resource(name = "DeclarationDao")
	private DeclarationDao dao;

	public Object good() {
		// TODO Auto-generated method stub
		return "BadgeMa";
	}
	// User 전체 출력
	public List<Map<String, Object>> selectDeclarationList(Map<String, Object> Map) throws Exception {
		return dao.selectDeclarationList(Map);
	}

	// user 한명 delete
	public void deleteDeclaration(Map<String, Object> map) {
		dao.deleteDeclaration(map);
	}
}
