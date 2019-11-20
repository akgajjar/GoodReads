package com.goodreads.bin;

import java.io.Serializable;

public class rating_master implements Serializable {

	private static final long serialVersionUID = 1L;

	private user_master user;
	private book_master book;
	private int rating;
	public user_master getUser() {
		return user;
	}
	public void setUser(user_master user) {
		this.user = user;
	}
	public book_master getBook() {
		return book;
	}
	public void setBook(book_master book) {
		this.book = book;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
}
