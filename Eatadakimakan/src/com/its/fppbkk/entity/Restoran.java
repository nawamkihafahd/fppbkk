package com.its.fppbkk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="restoran")
public class Restoran {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="Resto_Nama")
	private String restoNama;
	
	@Column(name="Resto_Daerah")
	private String restoDaerah;
	
	@Column(name="Resto_Alamat")
	private String restoAlamat;

	public Restoran(String restoNama, String restoDaerah, String restoAlamat) {
		this.restoNama = restoNama;
		this.restoDaerah = restoDaerah;
		this.restoAlamat = restoAlamat;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRestoNama() {
		return restoNama;
	}

	public void setRestoNama(String restoNama) {
		this.restoNama = restoNama;
	}

	public String getRestoDaerah() {
		return restoDaerah;
	}

	public void setRestoDaerah(String restoDaerah) {
		this.restoDaerah = restoDaerah;
	}

	public String getRestoAlamat() {
		return restoAlamat;
	}

	public void setRestoAlamat(String restoAlamat) {
		this.restoAlamat = restoAlamat;
	}
	
	

}
