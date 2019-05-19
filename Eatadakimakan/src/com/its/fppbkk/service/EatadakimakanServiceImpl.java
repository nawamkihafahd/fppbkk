package com.its.fppbkk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.its.fppbkk.dao.RestoranDAO;
import com.its.fppbkk.entity.Restoran;

public class EatadakimakanServiceImpl implements EatadakimakanService {

	@Autowired
	private RestoranDAO restoranDAO;
	
	@Override
	public List<Restoran> getRestoran() {
		// TODO Auto-generated method stub
		return restoranDAO.getRestoran();
	}

	@Override
	public void saveRestoran(Restoran resto) {
		// TODO Auto-generated method stub
		restoranDAO.saveRestoran(resto);
	}

	@Override
	public Restoran getRestoranByID(int restoID) {
		// TODO Auto-generated method stub
		return restoranDAO.getRestoranByID(restoID);
	}

	@Override
	public void deleteRestoran(int restoID) {
		// TODO Auto-generated method stub
		restoranDAO.deleteRestoran(restoID);

	}

}
