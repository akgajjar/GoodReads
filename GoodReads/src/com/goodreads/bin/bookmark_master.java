package com.goodreads.bin;

import java.io.Serializable;

public class bookmark_master implements Serializable{

	private static final long serialVersionUID = 1L;

	private book_master book;
	private user_master user;
	public book_master getBook() {
		return book;
	}
	public void setBook(book_master book) {
		this.book = book;
	}
	public user_master getUser() {
		return user;
	}
	public void setUser(user_master user) {
		this.user = user;
	}
	
}
