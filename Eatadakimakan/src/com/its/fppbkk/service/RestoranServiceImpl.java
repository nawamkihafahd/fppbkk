package com.its.fppbkk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.its.fppbkk.dao.RestoranDAO;
import com.its.fppbkk.entity.Restoran;

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


}
