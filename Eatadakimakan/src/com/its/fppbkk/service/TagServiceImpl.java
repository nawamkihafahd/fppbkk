package com.its.fppbkk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.its.fppbkk.dao.TagDAO;
import com.its.fppbkk.entity.Tag;

@Service
public class TagServiceImpl implements TagService {
	
	@Autowired
	private TagDAO tagDAO;

	@Override
	@Transactional
	public List<Tag> getTag() {
		// TODO Auto-generated method stub
		return tagDAO.getTag();
	}

	@Override
	@Transactional
	public void saveTag(Tag tag) {
		// TODO Auto-generated method stub
		tagDAO.saveTag(tag);

	}

	@Override
	@Transactional
	public Tag getTagByID(int tagID) {
		// TODO Auto-generated method stub
		return tagDAO.getTagByID(tagID);
	}

	@Override
	@Transactional
	public void deleteTag(int tagID) {
		// TODO Auto-generated method stub
		tagDAO.deleteTag(tagID);

	}

	@Override
	@Transactional
	public List<Tag> getTagIn(int restoID) {
		// TODO Auto-generated method stub
		return tagDAO.getTagIn(restoID);
	}


}
