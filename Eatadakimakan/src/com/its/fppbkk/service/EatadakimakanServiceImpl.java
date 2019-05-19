package com.its.fppbkk.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.its.fppbkk.dao.MenuDAO;
import com.its.fppbkk.dao.RestoranDAO;
import com.its.fppbkk.entity.Restoran;

@Service
public class EatadakimakanServiceImpl implements EatadakimakanService {

	@Autowired
	private RestoranDAO restoranDAO;
	
	@Autowired
	private MenuDAO menuDAO;
	
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
