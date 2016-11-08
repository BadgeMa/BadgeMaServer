package com.swmaestro.badgemacenter.model;

public class UserModel {
	private String badge_id;
	private int grade;
	private int room;
	private int number;
	public String getBadge_id() {
		return badge_id;
	}
	public void setBadge_id(String badge_id) {
		this.badge_id = badge_id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
}
