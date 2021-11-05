package com.book.po;


import com.user.po.Userinfo;// default package

/**
 * Remark entity. @author MyEclipse Persistence Tools
 */

public class Remark implements java.io.Serializable {

	// Fields

	private Integer id;
	private Bookinfo bookinfo;
	private Userinfo userinfo;
	private String grade;
	private String remark;
	private String date;

	// Constructors

	/** default constructor */
	public Remark() {
	}

	/** minimal constructor */
	public Remark(Bookinfo bookinfo, Userinfo userinfo, String grade,
			String remark) {
		this.bookinfo = bookinfo;
		this.userinfo = userinfo;
		this.grade = grade;
		this.remark = remark;
	}

	/** full constructor */
	public Remark(Bookinfo bookinfo, Userinfo userinfo, String grade,
			String remark, String date) {
		this.bookinfo = bookinfo;
		this.userinfo = userinfo;
		this.grade = grade;
		this.remark = remark;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Bookinfo getBookinfo() {
		return this.bookinfo;
	}

	public void setBookinfo(Bookinfo bookinfo) {
		this.bookinfo = bookinfo;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public String getGrade() {
		return this.grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}