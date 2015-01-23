package com.zngn.stock;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;


@Entity
@Table(name = "tb_urunler", catalog = "zngn")
public class Urun {
	
	private int urunID;
	private String urunAdi;
	private String aciklama;
	private Double fiyat;
	private User user ;
	private Kategori kategori;
	private byte[] photo;

	 
	public Urun(int urunID, String urunAdi, String aciklama, double fiyat, User user, byte[] photo, Kategori kategori)
	{
		this.urunID = urunID;
		this.urunAdi = urunAdi;
		this.aciklama = aciklama;
		this.fiyat = fiyat;
		this.user = user;
		this.photo = photo;
		this.kategori = kategori;
		
		
		
	}
	
	public Urun(int urunID, String urunAdi, String aciklama, double fiyat)
	{
		this.urunID = urunID;
		this.urunAdi = urunAdi;
		this.aciklama = aciklama;
		this.fiyat = fiyat;
	}
		
		
		
	

	@Id
	@Column(name = "urunID", nullable = false)
	public int getUrunID() {
		return this.urunID;
	}
	public void setUrunID(int urunID) {
		this.urunID = urunID;
	}
	
	@Column(name = "urunAdi", nullable = false)
	public String getUrunAdi() {
		return this.urunAdi;
	}
	public void setUrunAdi(String urunAdi) {
		this.urunAdi = urunAdi;
	}
	
	@Column(name = "aciklama", nullable = false)
	public String getAciklama() {
		return this.aciklama;
	}
	public void setAciklama(String aciklama) {
		this.aciklama = aciklama;
	}
	
	@Column(name = "fiyat", nullable = false)
	public Double getFiyat() {
		return this.fiyat;
	}
	public void setFiyat(Double fiyat) {
		this.fiyat = fiyat;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "username", nullable = false)
	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Type(type="org.hibernate.type.BinaryType")
	@Column (name = "photo") 
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "kategoriID", nullable = false)
	public Kategori getKategori() {
		return this.kategori;
	}
	public void setKategori(Kategori kategori) {
		this.kategori = kategori;
	}
	
	public Urun()
	{}
	
	
	
	
	
	

}
