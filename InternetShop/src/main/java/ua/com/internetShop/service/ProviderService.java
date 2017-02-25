package ua.com.internetShop.service;

import java.util.List;

import ua.com.internetShop.entity.Provider;

public interface ProviderService {

	void save (Provider provider) throws Exception;
	List<Provider> findAll();
	Provider findOne (int id);
	void delete (int id);
}
