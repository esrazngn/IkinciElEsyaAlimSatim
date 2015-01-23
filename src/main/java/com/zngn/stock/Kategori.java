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
@Table(name = "tb_kategori", catalog = "zngn")
public class Kategori {
	
	private int kategoriID;
	private String kategoriAdi;
	private Set<Urun> urun = new HashSet<Urun>(
			0);
	
	@Id
	@Column(name = "kategoriID", nullable = false)
	public int getKategoriID() {
		return this.kategoriID;
	}
	public void setKategoriID(int kategoriID) {
		this.kategoriID = kategoriID;
	}
	
	@Column(name = "kategoriAdi", nullable = false)
	public String getKategoriAdi() {
		return this.kategoriAdi;
	}
	public void setKategoriAdi(String kategoriAdi) {
		this.kategoriAdi = kategoriAdi;
	}
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "kategori")
	public Set<Urun> getUrun() {
		return this.urun;
	}
	public void setUrun(Set<Urun> urun) {
		this.urun = urun;
	}

}
