package com.its.fppbkk.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="menu")
public class Menu {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int restoID;
	
	@ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name="Resto_ID")
	private Restoran restoran;
	
	@Column(name="Menu_Nama")
	private String menuNama;
	
	@Column(name="Menu_Harga")
	private int menuHarga;

	public Menu(Restoran restoran, String menuNama, int menuHarga) {
		this.restoran = restoran;
		this.menuNama = menuNama;
		this.menuHarga = menuHarga;
	}
	
	

	public Menu() {
	}



	public int getRestoID() {
		return restoID;
	}

	public void setRestoID(int restoID) {
		this.restoID = restoID;
	}

	public Restoran getRestoran() {
		return restoran;
	}

	public void setRestoran(Restoran restoran) {
		this.restoran = restoran;
	}

	public String getMenuNama() {
		return menuNama;
	}

	public void setMenuNama(String menuNama) {
		this.menuNama = menuNama;
	}

	public int getMenuHarga() {
		return menuHarga;
	}

	public void setMenuHarga(int menuHarga) {
		this.menuHarga = menuHarga;
	}
	
	
}
