package com.iremsena.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity 
public class Kullanicilar {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	
	
	@Column(nullable=false)
	private String name;
	private String surname;
	private String  email;
	private String tel;
	private String tc;
	private String adress;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth_day;
	private String ques1;
	private String ques2;
	private String ques3;
	private String ques4;
	private String ques5;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTc() {
		return tc;
	}

	public void setTc(String tc) {
		this.tc = tc;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public Date getBirth_day() {
		return birth_day;
	}

	public void setBirth_day(Date birth_day) {
		this.birth_day = birth_day;
	}

	public String getQues1() {
		return ques1;
	}

	public void setQues1(String ques1) {
		this.ques1 = ques1;
	}

	public String getQues2() {
		return ques2;
	}

	public void setQues2(String ques2) {
		this.ques2 = ques2;
	}

	public String getQues3() {
		return ques3;
	}

	public void setQues3(String ques3) {
		this.ques3 = ques3;
	}

	public String getQues4() {
		return ques4;
	}

	public void setQues4(String ques4) {
		this.ques4 = ques4;
	}

	public String getQues5() {
		return ques5;
	}

	public void setQues5(String ques5) {
		this.ques5 = ques5;
	}

	@Override
	public String toString() {
		return "Kullanicilar [id=" + id + ", name=" + name + ", surname=" + surname + ", email=" + email + ", tel="
				+ tel + ", tc=" + tc + ", adress=" + adress + ", birth_day=" + birth_day + ", ques1=" + ques1
				+ ", ques2=" + ques2 + ", ques3=" + ques3 + ", ques4=" + ques4 + ", ques5=" + ques5 + "]";
	}




	
	
	
	
	
	}