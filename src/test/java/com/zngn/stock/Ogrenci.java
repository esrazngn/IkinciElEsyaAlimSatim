package com.zngn.stock;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "ogrenci", catalog = "deneme")
public class Ogrenci {
	
	private Integer password;
	private String  username;
	private Set<Sira> sira = new HashSet<Sira>(0);
	
	@Column(name = "password", nullable = false)
	public Integer getPassword() {
		return password;
	}
	public void setPassword(Integer password) {
		this.password = password;
	}
	
	@Id
	@Column(name = "username", nullable = false)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public Ogrenci()
	{}
	
	public Ogrenci(String username, int password)
	{
		this.username = username;
		this.password = password;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "ogrenci")
	public Set<Sira> getSira() {
		return this.sira;
	}

	public void setSira(Set<Sira> sira) {
		this.sira = sira;
	}
	
	

}
