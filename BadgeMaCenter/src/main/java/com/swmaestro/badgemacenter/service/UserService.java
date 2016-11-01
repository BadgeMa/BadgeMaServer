package com.swmaestro.badgemacenter.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.swmaestro.badgemacenter.dao.UserDao;

@Service("UserService")
public class UserService {

	@Resource(name = "UserDao")
	private UserDao dao;
	public Object good() {
		// TODO Auto-generated method stub
		return "BadgeMa";
	}
	// User 전체 출력
		public List<Map<String, Object>> selectUserList(Map<String, Object> Map) throws Exception {
			return dao.selectUserList(Map);
		}
		// user 한명 delete
		public void deleteUser(Map<String, Object> map) {
			dao.deleteUser(map);
		}
}
