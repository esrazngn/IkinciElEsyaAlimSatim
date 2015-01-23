package com.zngn.stock;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


@Entity
@Table(name = "sira", catalog = "deneme")
public class Sira  implements java.io.Serializable {
	
	private Integer Id;
	private Ogrenci ogrenci;
	
	public Sira()
	{
		
	}
	public Sira (int Id, Ogrenci ogrenci)
	{
		this.Id = Id;
		this.ogrenci = ogrenci;
	}
	
	@Id
	@Column(name = "Id", nullable = false)
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "username", nullable = false)
	public Ogrenci getOgrenci() {
		return ogrenci;
	}
	public void setOgrenci(Ogrenci ogrenci) {
		this.ogrenci = ogrenci;
	}
	
	
}
