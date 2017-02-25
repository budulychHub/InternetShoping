package ua.com.internetShop.service;

import java.util.List;

import ua.com.internetShop.entity.Tablet;

public interface TabletService {

	void save (Tablet tablets) throws Exception;
	List<Tablet> findAll();
	Tablet findOne (int id);
	void delete (int id);
	
	List<Tablet> findTabletWithProvider();
	
}
