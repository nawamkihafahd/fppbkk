package com.its.fppbkk.dao;

import java.util.List;

import com.its.fppbkk.entity.Restoran;

public interface RestoranDAO {
	
	public List<Restoran> getRestoran();
	
	public void saveRestoran(Restoran resto);
	
	public Restoran getRestoranByID(int restoID);
	
	public void deleteRestoran(int restoID);

}
