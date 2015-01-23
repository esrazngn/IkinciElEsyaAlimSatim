package com.zngn.stock;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "tb_user", catalog = "zngn")
public class User {

	private String username;
	private int password;
	private String name;
	private String surname;
	private String adres;
	private int phone;
	private Set<Urun> urun = new HashSet<Urun>(
			0);
	private Urun urunler;
	
	public User() {
	}
	
	public User(String username, int password, String name, String surname, String adres, int phone){
		this.username = username;
		this.password = password;
		this.name = name;
		this.surname = surname;
		this.adres = adres;
		this.phone = phone;
	}
	
	@Id
	@Column(name = "username", nullable = false)
	public String getUsername() {
		return this.username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "password", nullable = false)
	public int getPassword() {
		return this.password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	
	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "surname", nullable = false)
	public String getSurname() {
		return this.surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	@Column(name = "adres", nullable = false)
	public String getAdres() {
		return this.adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
	}
	
	@Column(name = "phone", nullable = false)
	public int getPhone() {
		return this.phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	public Set<Urun> getUrun() {
		return this.urun;
	}

	public void setUrun(Set<Urun> urun) {
		this.urun = urun;
	}

	
	

}
