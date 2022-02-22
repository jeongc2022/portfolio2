package com.ezenshopping.dto;

import java.sql.Date;

public class ezenboarddto {
private String bemail;
private int bnum;
private String btitle;
private String bcontent;
private int bhit;
private Date bdate;
private String name;
private String prefershop;

public String getPrefershop() {
	return prefershop;
}
public void setPrefershop(String prefershop) {
	this.prefershop = prefershop;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBemail() {
	return bemail;
}
public void setBemail(String bemail) {
	this.bemail = bemail;
}
public int getBnum() {
	return bnum;
}
public void setBnum(int bnum) {
	this.bnum = bnum;
}
public String getBtitle() {
	return btitle;
}
public void setBtitle(String btitle) {
	this.btitle = btitle;
}
public String getBcontent() {
	return bcontent;
}
public void setBcontent(String bcontent) {
	this.bcontent = bcontent;
}
public int getBhit() {
	return bhit;
}
public void setBhit(int bhit) {
	this.bhit = bhit;
}
public Date getBdate() {
	return bdate;
}
public void setBdate(Date bdate) {
	this.bdate = bdate;
}
}
