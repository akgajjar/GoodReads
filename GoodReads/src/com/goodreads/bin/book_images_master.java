package com.goodreads.bin;

import java.sql.Blob;
import java.util.Set;

public class book_images_master {

	
	private int Image_Id;
	private Blob Image_Url;
	private book_master book;
	
	public int getImage_Id() {
		return Image_Id;
	}
	public void setImage_Id(int image_Id) {
		Image_Id = image_Id;
	}
	public Blob getImage_Url() {
		return Image_Url;
	}
	public void setImage_Url(Blob image_Url) {
		Image_Url = image_Url;
	}
	
	public book_master getBook() {
		return book;
	}
	public void setBook(book_master book) {
		this.book = book;
	}
	
	
	
	
	
}
