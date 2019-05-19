package com.its.fppbkk.service;

import java.util.List;

import com.its.fppbkk.entity.Menu;

public interface MenuService {
	
	public List<Menu> getMenu();
	
	public void saveMenu(Menu menu);
	
	public Menu getMenuByID(int menuID);
	
	public void deleteMenu(int menuID);
	
	public List<Menu> getMenuRestoran(int restoID);

}
