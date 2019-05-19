package com.its.fppbkk.service;

import java.util.List;

import com.its.fppbkk.entity.Restoran;

public interface RestoranService {
	
	public List<Restoran> getRestoran();
	
	public void saveRestoran(Restoran resto);
	
	public Restoran getRestoranByID(int restoID);
	
	public void deleteRestoran(int restoID);


}
