package com.book.po;// default package

import java.util.HashSet;
import java.util.Set;

/**
 * Bookinfo entity. @author MyEclipse Persistence Tools
 */

public class Bookinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String bookname;
	private String isbn;
	private String writer;
	private String publisher;
	private String intro;
	private String price;
	private String remaining;
	private String picture;
	private String date;
	private Set carts = new HashSet(0);
	private Set orders = new HashSet(0);
	private Set remarks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Bookinfo() {
	}

	/** minimal constructor */
	public Bookinfo(String bookname, String writer, String publisher,
			String price, String remaining, String date) {
		this.bookname = bookname;
		this.writer = writer;
		this.publisher = publisher;
		this.price = price;
		this.remaining = remaining;
		this.date = date;
	}

	/** full constructor */
	public Bookinfo(String bookname, String isbn, String writer,
			String publisher, String intro, String price, String remaining,
			String picture, String date, Set carts, Set orders, Set remarks) {
		this.bookname = bookname;
		this.isbn = isbn;
		this.writer = writer;
		this.publisher = publisher;
		this.intro = intro;
		this.price = price;
		this.remaining = remaining;
		this.picture = picture;
		this.date = date;
		this.carts = carts;
		this.orders = orders;
		this.remarks = remarks;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getWriter() {
		return this.writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getRemaining() {
		return this.remaining;
	}

	public void setRemaining(String remaining) {
		this.remaining = remaining;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Set getCarts() {
		return this.carts;
	}

	public void setCarts(Set carts) {
		this.carts = carts;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getRemarks() {
		return this.remarks;
	}

	public void setRemarks(Set remarks) {
		this.remarks = remarks;
	}

}