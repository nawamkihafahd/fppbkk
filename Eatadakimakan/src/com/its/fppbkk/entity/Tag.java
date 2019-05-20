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
import javax.persistence.Table;

@Entity
@Table(name="tag")
public class Tag {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="Tag_Nama")
	private String tagNama;
	
	@ManyToMany(fetch=FetchType.EAGER,cascade= {CascadeType.DETACH, CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
	@JoinTable(name="resto_tag", joinColumns=@JoinColumn(name="tag_id"), inverseJoinColumns = @JoinColumn(name="resto_id"))
	private List<Restoran> resto;

	public Tag(String tagNama, List<Restoran> resto) {
		this.tagNama = tagNama;
		this.resto = resto;
	}

	public Tag() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTagNama() {
		return tagNama;
	}

	public void setTagNama(String tagNama) {
		this.tagNama = tagNama;
	}

	public List<Restoran> getResto() {
		return resto;
	}

	public void setResto(List<Restoran> resto) {
		this.resto = resto;
	}

	public void addRestoran(Restoran theResto) {
		
		if (resto == null) {
			resto = new ArrayList<>();
		}
		
		resto.add(theResto);
	}
}
