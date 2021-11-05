package com.book.po;

import com.user.po.Userinfo;
//default package

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer id;
	private Bookinfo bookinfo;
	private Userinfo userinfo;
	private String number;
	private String address;
	private String postcode;
	private String orderdate;
	private String status;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Bookinfo bookinfo, Userinfo userinfo, String number,
			String address, String postcode, String status) {
		this.bookinfo = bookinfo;
		this.userinfo = userinfo;
		this.number = number;
		this.address = address;
		this.postcode = postcode;
		this.status = status;
	}

	/** full constructor */
	public Order(Bookinfo bookinfo, Userinfo userinfo, String number,
			String address, String postcode, String orderdate, String status) {
		this.bookinfo = bookinfo;
		this.userinfo = userinfo;
		this.number = number;
		this.address = address;
		this.postcode = postcode;
		this.orderdate = orderdate;
		this.status = status;
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

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}