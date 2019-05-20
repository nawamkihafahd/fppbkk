package com.its.fppbkk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.its.fppbkk.dao.RestoranDAO;
import com.its.fppbkk.entity.Menu;
import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.entity.Tag;

@Service
public class RestoranServiceImpl implements RestoranService {

	@Autowired
	private RestoranDAO restoranDAO;
	
	@Override
	@Transactional
	public List<Restoran> getRestoran() {
		// TODO Auto-generated method stub
		return restoranDAO.getRestoran();
	}

	@Override
	@Transactional
	public void saveRestoran(Restoran resto) {
		// TODO Auto-generated method stub
		restoranDAO.saveRestoran(resto);
	}

	@Override
	@Transactional
	public Restoran getRestoranByID(int restoID) {
		// TODO Auto-generated method stub
		return restoranDAO.getRestoranByID(restoID);
	}

	@Override
	@Transactional
	public void deleteRestoran(int restoID) {
		// TODO Auto-generated method stub
		restoranDAO.deleteRestoran(restoID);

	}
	
	@Override
	@Transactional
	public List<Tag> getTagRestoran(int restoID){
		return restoranDAO.getTagRestoran(restoID);
	}
	
	@Override
	@Transactional
	public List<Restoran> getRestoranByBudget(int budget, String location)
	{
		return restoranDAO.getRestoranByBudget(budget, location);
	}
}
