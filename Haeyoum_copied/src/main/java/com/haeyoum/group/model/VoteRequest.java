package com.haeyoum.group.model;

import java.util.List;

import haeyoum.util.DateUtil;

public class VoteRequest {

	private Vote vote;
	private List<VoteContent> voteCon;
	private DateUtil util = new DateUtil();

	public VoteRequest() {}

	public VoteRequest(Vote vote, List<VoteContent> voteCon) {
		this.vote = vote;
		this.voteCon = voteCon;
	}

	public Vote getVote() {
		return vote;
	}

	public void setVote(Vote vote) {
		this.vote = vote;
	}

	public List<VoteContent> getVoteCon() {
		return voteCon;
	}

	public void setVoteCon(List<VoteContent> voteCon) {
		this.voteCon = voteCon;
	}
	
	public String getStDate() {
		return util.convertDayTime(vote.getVote_startdate());
	}
	public String getEndDate() {
		return util.convertDayTime(vote.getVote_enddate());
	}
   
}
