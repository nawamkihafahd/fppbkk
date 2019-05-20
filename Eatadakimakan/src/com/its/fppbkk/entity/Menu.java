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
	private int id;
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL )
	@JoinColumn(name="Resto_ID")
	private Restoran restoran;
	
	@Column(name="Menu_Nama")
	private String menuNama;
	
	@Column(name="Menu_Harga")
	private int menuHarga;

	@Column(name="Menu_Image_Path")
	private String menuImagePath;
	
	
	public Menu(String menuNama, int menuHarga, String menuImagePath) {
		this.menuNama = menuNama;
		this.menuHarga = menuHarga;
		this.menuImagePath = menuImagePath;
	}
	

	public Menu() {
	
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
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

	public String getMenuImagePath() {
		return menuImagePath;
	}

	public void setMenuImagePath(String menuImagePath) {
		this.menuImagePath = menuImagePath;
	}
}
