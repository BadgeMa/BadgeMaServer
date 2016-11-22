package com.swmaestro.badgemacenter.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.swmaestro.badgemacenter.dao.FeedDao;

@Service("FeedService")
public class FeedService {
	@Resource(name = "FeedDao")
	private FeedDao dao;

	public Object good() {
		// TODO Auto-generated method stub
		return "BadgeMa";
	}
	public List<Map<String, Object>> selectFeedList(Map<String, Object> Map) throws Exception {
		return dao.selectFeedList(Map);
	}
	public List<Map<String, Object>> selectFeedConfirmList(Map<String, Object> Map) throws Exception {
		return dao.selectFeedConfirmList(Map);
	}
	public List<Map<String, Object>> selectFeedCommentList(Map<String, Object> Map) throws Exception {
		return dao.selectFeedCommentList(Map);
	}
	public void insertFeedComment(Map<String, Object> map) {
		dao.insertFeedComment(map);
	}
	public void insertFeed(Map<String, Object> map) {
		dao.insertFeed(map);
	}
	public void updateFeedState(Map<String, Object> map) {
		dao.updateFeedState(map);
	}
}
