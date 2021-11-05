package com.book.po;

import com.user.po.Userinfo;
// default package




/**
 * Rebate entity. @author MyEclipse Persistence Tools
 */

public class Rebate  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Userinfo userinfo;
     private String level;
     private String rebateRate;


    // Constructors

    /** default constructor */
    public Rebate() {
    }

    
    /** full constructor */
    public Rebate(Userinfo userinfo, String level, String rebateRate) {
        this.userinfo = userinfo;
        this.level = level;
        this.rebateRate = rebateRate;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Userinfo getUserinfo() {
        return this.userinfo;
    }
    
    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }

    public String getLevel() {
        return this.level;
    }
    
    public void setLevel(String level) {
        this.level = level;
    }

    public String getRebateRate() {
        return this.rebateRate;
    }
    
    public void setRebateRate(String rebateRate) {
        this.rebateRate = rebateRate;
    }
   








}