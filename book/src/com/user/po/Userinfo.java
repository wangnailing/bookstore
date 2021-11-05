package com.user.po;
// default package

import java.util.HashSet;
import java.util.Set;


/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo  implements java.io.Serializable {


    // Fields    

     public int id;
     private String username;
     private String pwd;
     private String email;
     private String address;
     private String postcode;
     private Integer level;
     private String power;
     private String userpwd;
     private Set remarks = new HashSet(0);
     private Set orders = new HashSet(0);
     private Set rebates = new HashSet(0);


    // Constructors

    /** default constructor */
    public Userinfo() {
    }

	/** minimal constructor */
    public Userinfo(String username, String pwd, String email, String address) {
        this.username = username;
        this.pwd = pwd;
        this.email = email;
        this.address = address;
    }
    
    /** full constructor */
    public Userinfo(String username, String pwd, String email, String address, String postcode, Integer level, String power, String userpwd, Set remarks, Set orders, Set rebates) {
        this.username = username;
        this.pwd = pwd;
        this.email = email;
        this.address = address;
        this.postcode = postcode;
        this.level = level;
        this.power = power;
        this.userpwd = userpwd;
        this.remarks = remarks;
        this.orders = orders;
        this.rebates = rebates;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return this.pwd;
    }
    
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
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

    public Integer getLevel() {
        return this.level;
    }
    
    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getPower() {
        return this.power;
    }
    
    public void setPower(String power) {
        this.power = power;
    }

    public String getUserpwd() {
        return this.userpwd;
    }
    
    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public Set getRemarks() {
        return this.remarks;
    }
    
    public void setRemarks(Set remarks) {
        this.remarks = remarks;
    }

    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }

    public Set getRebates() {
        return this.rebates;
    }
    
    public void setRebates(Set rebates) {
        this.rebates = rebates;
    }
   








}