package com.swmaestro.badgemacenter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.swmaestro.badgemacenter.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("FeedDao")
public class FeedDao extends abDAO{
	public List<Map<String, Object>> selectFeedList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("feedSQL.selectFeedList", commandMap);
	}
	public List<Map<String, Object>> selectFeedConfirmList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("feedSQL.selectFeedConfirmList", commandMap);
	}
	public List<Map<String, Object>> selectFeedCommentList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("feedSQL.selectFeedCommentList", commandMap);
	}
	public void insertFeedComment(Map<String, Object> map) {
		insert("feedSQL.insertFeedComment", map);
	}
	public void insertFeed(Map<String, Object> map) {
		insert("feedSQL.insertFeed", map);
	}
	public void updateFeedState(Map<String, Object> map) {
		update("feedSQL.updateFeedState", map);
	}
}
