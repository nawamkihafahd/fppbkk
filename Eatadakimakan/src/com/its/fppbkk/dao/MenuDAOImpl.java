/**
 * 
 */
package com.its.fppbkk.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.its.fppbkk.entity.Menu;

/**
 * @author LENOVO
 *
 */
@Repository
public class MenuDAOImpl implements MenuDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Menu> getMenu() {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		
		return null;
	}

	@Override
	public void saveMenu(Menu menu) {
		// TODO Auto-generated method stub

	}

	@Override
	public Menu getMenuByID(int menuID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMenu(int menuID) {
		// TODO Auto-generated method stub

	}

}
