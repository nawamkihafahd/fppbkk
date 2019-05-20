package com.its.fppbkk.dao;

import java.util.List;

import com.its.fppbkk.entity.Menu;
import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.entity.Tag;

public interface RestoranDAO {
	
	public List<Restoran> getRestoran();
	
	public void saveRestoran(Restoran resto);
	
	public Restoran getRestoranByID(int restoID);
	
	public void deleteRestoran(int restoID);
	
	public List<Tag> getTagRestoran(int restoID);
	public List<Restoran> getRestoranByBudget(int budget, String location);
}
