package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("UserDao")
public class UserDao extends abDAO{
	public List<Map<String, Object>> selectUserList(Map<String, Object> commandMap) {
		return (List<Map<String,Object>>)selectList("sample.selectUserList", commandMap);
	}
	public void deleteUser(Map<String, Object> map) {
		delete("sample.deleteUser",map);
	}
}
