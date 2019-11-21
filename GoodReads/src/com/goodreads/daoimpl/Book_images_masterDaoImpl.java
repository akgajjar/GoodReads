package com.goodreads.daoimpl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.goodreads.bin.book_category_master;
import com.goodreads.bin.book_images_master;
import com.goodreads.bin.book_master;
import com.goodreads.dao.Book_category_masterDao;
import com.goodreads.dao.Book_images_masterDao;
import com.goodreads.dao.Book_masterDao;

public class Book_images_masterDaoImpl implements Book_images_masterDao {

	
	HibernateTemplate template;
	Book_masterDao bdao;
	
	@Override
	public void setTemplate(HibernateTemplate template) {
		this.template=template;
	}

	@Override
	public void setBdao(Book_masterDao bdao) {
		this.bdao=bdao;
	}

	@Override
	public void saveimage(book_images_master b) {
		template.save(b);
	}

	@Override
	public void updateimage(book_images_master b) {
		template.update(b);
	}

	@Override
	public void deleteimage(book_images_master b) {
		template.delete(b);
	}

	@Override
	public List<book_images_master> getByISBN(String ISBN) {
		book_master b= bdao.getByISBN(ISBN);
		Object[] params  = {b};
		String query = "select distinct b from book_images_master b  where c.book = ? \"";
		return template.find(query, params);
	}

	@Override
	public List<book_master> getimages() {
		return template.loadAll(book_images_master.class);
	}

}
