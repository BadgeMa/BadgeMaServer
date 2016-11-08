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

	// declaration ��ü ���
	public List<Map<String, Object>> selectDeclarationList(Map<String, Object> Map) throws Exception {
		return dao.selectDeclarationList(Map);
	}

	// Button �Ǽ� ��������
	public List<Map<String, Object>> selectBtnNumber(Map<String, Object> Map) throws Exception {
		return dao.selectBtnNumber(Map);
	}
	public List<Map<String, Object>> selectUnNotificationList(Map<String, Object> Map) throws Exception {
		return dao.selectUnNotificationList(Map);
	}
	public void insertDeclaration(Map<String, Object> map) {
		dao.insertDeclaration(map);
	}
	public void updateDeclaration(Map<String, Object> map) {
		dao.updateDeclaration(map);
	}
	//  �Ѱ� delete
	public void deleteDeclaration(Map<String, Object> map) {
		dao.deleteDeclaration(map);
	}
}
