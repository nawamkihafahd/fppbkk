package com.its.fppbkk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.its.fppbkk.dao.MenuDAO;
import com.its.fppbkk.entity.Menu;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuDAO menuDAO;

	@Override
	@Transactional
	public List<Menu> getMenu() {
		// TODO Auto-generated method stub
		return menuDAO.getMenu();
	}

	@Override
	@Transactional
	public void saveMenu(Menu menu) {
		// TODO Auto-generated method stub
		
		menuDAO.saveMenu(menu);

	}

	@Override
	@Transactional
	public Menu getMenuByID(int menuID) {
		// TODO Auto-generated method stub
		return menuDAO.getMenuByID(menuID);
	}

	@Override
	@Transactional
	public void deleteMenu(int menuID) {
		// TODO Auto-generated method stub
		
		menuDAO.deleteMenu(menuID);

	}
	
	@Override
	@Transactional
	public List<Menu> getMenuRestoran(int restoID){
		return menuDAO.getMenuRestoran(restoID);
	}

}
