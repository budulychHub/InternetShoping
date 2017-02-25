package ua.com.internetShop.service;

import java.util.List;

import org.springframework.data.domain.Page;

import ua.com.internetShop.entity.NoteBook;

public interface NoteBookService {

	void save (NoteBook noteBooks) throws Exception;
	List<NoteBook> findAll();
	NoteBook findOne (int id);
	void delete (int id);
	
	List<NoteBook> findNoteBookWithProvider();
	
	
	Page<NoteBook> findAll(int currentPage, int numberOfItem);
}
