package com.its.fppbkk.dao;

import java.util.List;

import com.its.fppbkk.entity.Menu;

public interface MenuDAO {
	
	public List<Menu> getMenu();
	
	public void saveMenu(Menu menu);
	
	public Menu getMenuByID(int menuID);
	
	public void deleteMenu(int menuID);
	
	public List<Menu> getMenuRestoran(int restoID);

}
