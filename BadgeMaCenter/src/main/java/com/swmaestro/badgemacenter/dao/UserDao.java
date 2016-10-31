package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("UserDao")
public class UserDao extends abDAO{
	public List<Map<String, Object>> selectMemberList(Map<String, Object> commandMap) {
		return (List<Map<String,Object>>)selectList("sample.selectMemberList", commandMap);
	}
}
