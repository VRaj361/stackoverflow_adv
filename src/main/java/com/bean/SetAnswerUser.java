package com.bean;

public class SetAnswerUser {
	String answer;
	String url;
	int userid;
	int questionid;
	String firstname;
	boolean isaccepted;
	int answersid;
	public int getAnswersid() {
		return answersid;
	}
	public void setAnswersid(int answersid) {
		this.answersid = answersid;
	}
	public boolean getisIsaccepted() {
		return isaccepted;
	}
	public void setIsaccepted(boolean isaccepted) {
		this.isaccepted = isaccepted;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
}
