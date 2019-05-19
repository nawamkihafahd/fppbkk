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
		
		Query<Menu> kueri = currSession.createQuery("from Menu", Menu.class);
		
		List<Menu> menus = kueri.getResultList();
		
		return menus;
	}

	@Override
	public void saveMenu(Menu menu) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		currSession.saveOrUpdate(menu);
		
	}

	@Override
	public Menu getMenuByID(int menuID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Menu theMenu = currSession.get(Menu.class, menuID);

		
		return theMenu;
	}

	@Override
	public void deleteMenu(int menuID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Query kueri = currSession.createQuery("delete from Menu where ID=:mnID");
		kueri.setParameter("mnID", menuID);
		
		kueri.executeUpdate();

	}

	@Override
	public List<Menu> getMenuRestoran(int restoID){
		Session currSession = sessionFactory.getCurrentSession();
		
		Query<Menu> kueri = currSession.createQuery("from Menu where Resto_Id=:resID",Menu.class);
		kueri.setParameter("resID", restoID);
		
		List<Menu> menus = kueri.getResultList();
		
		return menus;
	}
}
