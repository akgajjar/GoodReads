package com.goodreads.serviceImpl;

import java.util.List;

import com.goodreads.bin.book_images_master;
import com.goodreads.bin.book_master;
import com.goodreads.dao.Book_images_masterDao;
import com.goodreads.daoimpl.Book_images_masterDaoImpl;
import com.goodreads.service.Book_images_masterService;

public class Book_Images_masterServiceImpl implements Book_images_masterService{

	Book_images_masterDao bdao;
	
	@Override
	public void setBdao(Book_images_masterDao bdao) {
		this.bdao=bdao;
	}

	@Override
	public void saveimage(book_images_master b) {
		bdao.saveimage(b);
	}

	@Override
	public void updateimage(book_images_master b) {
		bdao.updateimage(b);		
	}

	@Override
	public void deleteimage(book_images_master b) {
		bdao.deleteimage(b);
	}

	@Override
	public List<book_images_master> getByISBN(String ISBN) {
		return bdao.getByISBN(ISBN);
	}

	@Override
	public List<book_master> getimages() {
		return bdao.getimages();
	}

}
