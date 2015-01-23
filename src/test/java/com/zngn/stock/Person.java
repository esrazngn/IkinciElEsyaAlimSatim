package com.zngn.stock;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;

import com.mysql.jdbc.Blob;


@Entity
@Table(name = "person2", catalog = "zngn")
public class Person {

	private int person_id;
	private String first_name;
	private String last_name;
	private byte[] photo;
	
	public Person() {
	}
	
	public Person(int person_id, String first_name, String last_name, byte[] photo){
		this.person_id = person_id;
		this.first_name = first_name;
		this.last_name=last_name;
		this.photo = photo;
	
	}
	@Id
	@Column(name = "person_id")
	public int getPerson_id() {
		return this.person_id;
	}
	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	
	@Column(name = "first_name")
	public String getFirst_name() {
		return this.first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	
	@Column(name = "last_name")
	public String getLast_name() {
		return this.last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	
	@Type(type="org.hibernate.type.BinaryType")
	@Column (name = "photo") 
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	
	
	
}
