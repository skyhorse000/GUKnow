package edu.spring.project.domain;

import java.util.Date;

public class ReplyVO {
	private int rno; // 댓글번호
	private int bno; // 게시글 번호
	private String replycontent; // 댓글 내용
	private String replyname; // 댓글 작성자 아이디
	private Date regdate; // 댓글 작성시간
	private Date updatedate; // 댓글 작성시간

	public ReplyVO() {
	}

	public ReplyVO(int rno, int bno, String replycontent, String replyname, Date regdate, Date updatedate) {
		super();
		this.rno = rno;
		this.bno = bno;
		this.replycontent = replycontent;
		this.replyname = replyname;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public String getReplyname() {
		return replyname;
	}

	public void setReplyname(String replyname) {
		this.replyname = replyname;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	@Override
	public String toString() {
		String str = "댓글 번호 : " + rno + "\n" + "게시글 번호 : " + bno + "\n" + "댓글 작성자 이름 : " + replyname + "\n" + "댓글 내용 : "
				+ replycontent + "\n" + "댓글 작성 시간 : " + regdate + "\n" + "댓글 수정 시간 : " + updatedate;
		return str;
	}
}
