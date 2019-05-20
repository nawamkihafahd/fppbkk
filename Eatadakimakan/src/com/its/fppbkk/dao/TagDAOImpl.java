package com.its.fppbkk.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.entity.Tag;

@Repository
public class TagDAOImpl implements TagDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Tag> getTag() {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Query<Tag> kueri = currSession.createQuery("from Tag",Tag.class);
		
		List<Tag> tags = kueri.getResultList();
		
		return tags;
	}

	@Override
	public void saveTag(Tag tag) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		currSession.saveOrUpdate(tag);

	}

	@Override
	public Tag getTagByID(int tagID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Tag theTag= currSession.get(Tag.class, tagID);
		
		return theTag;
	}

	@Override
	public void deleteTag(int tagID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Query kueri = currSession.createQuery("delete from Tag where ID=:tID");
		kueri.setParameter("tID", tagID);
		
		kueri.executeUpdate();

	}

	@Override
	public List<Tag> getTagIn(int restoID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		
		Query<Tag> kueri = currSession.createQuery("from Tag",Tag.class);
		
		
		List<Tag> tags1 = kueri.getResultList();
		
		
		return tags1;
	}


}
