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
@Table(name = "tb_foto", catalog = "zngn")
public class Foto {

	private int fotoID;
	private String url;

	
	
	@Id
	@Column(name = "fotoID", nullable = false)
	public int getFotoID() {
		return this.fotoID;
	}
	public void setFotoID(int fotoID) {
		this.fotoID = fotoID;
	}
	
	@Column(name = "url", nullable = false)
	public String getUrl() {
		return this.url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
}
