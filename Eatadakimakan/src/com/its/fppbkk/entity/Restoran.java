package com.its.fppbkk.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
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
	
	@Column(name="Resto_Budget_Min")
	private int restoBudgetMin;
	
	@Column(name="Resto_Budget_Max")
	private int restoBudgetMax;
	
	@Column(name="Resto_Image_Path")
	private String restoImagePath;
	
	@OneToMany(mappedBy="restoran",cascade=CascadeType.ALL)
	private List<Menu> menus;
	
	@ManyToMany(fetch=FetchType.EAGER,cascade= {CascadeType.DETACH, CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
	@JoinTable(name="resto_tag", joinColumns=@JoinColumn(name="resto_id"), inverseJoinColumns = @JoinColumn(name="tag_id"))
	private List<Tag> tags;
	
	

	public Restoran(String restoNama, String restoDaerah, String restoAlamat, int restoBudgetMin, int restoBudgetMax,
			String restoImagePath) {
		this.restoNama = restoNama;
		this.restoDaerah = restoDaerah;
		this.restoAlamat = restoAlamat;
		this.restoBudgetMin = restoBudgetMin;
		this.restoBudgetMax = restoBudgetMax;
		this.restoImagePath = restoImagePath;
	}



	public Restoran() {
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

	public int getRestoBudgetMin() {
		return restoBudgetMin;
	}

	public void setRestoBudgetMin(int restoBudgetMin) {
		this.restoBudgetMin = restoBudgetMin;
	}

	public int getRestoBudgetMax() {
		return restoBudgetMax;
	}

	public void setRestoBudgetMax(int restoBudgetMax) {
		this.restoBudgetMax = restoBudgetMax;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	

	public String getRestoImagePath() {
		return restoImagePath;
	}

	public void setRestoImagePath(String restoImagePath) {
		this.restoImagePath = restoImagePath;
	}
	
	public void addMenu(Menu theMenu) {
		
		if (menus == null) {
			menus = new ArrayList<>();
		}
		
		menus.add(theMenu);
	}
	
	public void addTag(Tag theTag) {
		
		if (tags == null) {
			tags = new ArrayList<>();
		}
		
		tags.add(theTag);
	}


}
