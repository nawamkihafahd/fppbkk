package com.its.fppbkk.dao;

import java.util.List;

import com.its.fppbkk.entity.Tag;

public interface TagDAO {
	
	public List<Tag> getTag();
	
	public void saveTag(Tag tag);
	
	public Tag getTagByID(int tagID);
	
	public void deleteTag(int tagID);
	
	public List<Tag> getTagIn(int restoID);
	

}
