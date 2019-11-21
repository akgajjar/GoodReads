package com.goodreads.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.goodreads.bin.book_images_master;
import com.goodreads.bin.book_master;

public interface Book_images_masterDao {

	public void setTemplate(HibernateTemplate template);

	public void setBdao(Book_masterDao bdao);
	
	public void saveimage(book_images_master b);
	
	public void updateimage(book_images_master  b);
	
	public void deleteimage(book_images_master b);
	
	public List<book_images_master> getByISBN(String ISBN);
	
	public List<book_master> getimages();
}
