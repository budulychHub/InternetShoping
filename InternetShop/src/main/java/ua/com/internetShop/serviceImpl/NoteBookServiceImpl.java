package ua.com.internetShop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import ua.com.internetShop.dao.NoteBookDao;
import ua.com.internetShop.dao.ProviderDao;
import ua.com.internetShop.entity.NoteBook;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.service.NoteBookService;
import ua.com.internetShop.validationNoteBook.ValidatorNoteBook;

@Service
public class NoteBookServiceImpl implements NoteBookService{

	@Autowired
	private NoteBookDao  noteBookDao;
	@Autowired
	private ProviderDao providerDao;
	@Autowired
	@Qualifier("noteBookValidator")
	private ValidatorNoteBook validatorNoteBook;

	public void save(NoteBook noteBook) throws Exception {
		validatorNoteBook.validate(noteBook);
	noteBookDao.save(noteBook);	
	}

	public List<NoteBook> findAll() {
		return noteBookDao.findAll();
	}

	public NoteBook findOne(int id) {
		return noteBookDao.findOne(id);
	}

	public void delete(int id) {
		NoteBook noteBook = noteBookDao.findNoteBookWithProvider(id);
		for (Provider provider: noteBook.getProviders()) {
			provider.setNoteBooks(null);
			providerDao.save(provider);
		}
		noteBookDao.delete(id);
	}

	
	public List<NoteBook> findNoteBookWithProvider() {
		return noteBookDao.findNoteBookWithProvider();
	}

	
	
	@Override
	public Page<NoteBook> findAll(int currentPage, int numberOfItem) {
		
		List<NoteBook> notebooks = noteBookDao.findAll();
		Pageable pageable = new PageRequest(currentPage, numberOfItem);
		
		return noteBookDao.findAll(pageable);
	}
	
	
	
}
