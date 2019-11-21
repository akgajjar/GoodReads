package com.goodreads.service;

import java.util.List;

import com.goodreads.bin.book_images_master;
import com.goodreads.bin.book_master;
import com.goodreads.dao.Book_images_masterDao;
import com.goodreads.dao.Book_masterDao;
import com.goodreads.daoimpl.Book_images_masterDaoImpl;

public interface Book_images_masterService {
	
	
	
	public void setBdao(Book_images_masterDao bdao);

	public void saveimage(book_images_master b);
	
	public void updateimage(book_images_master  b);
	
	public void deleteimage(book_images_master b);
	
	public List<book_images_master> getByISBN(String ISBN);
	
	public List<book_master> getimages();


}
