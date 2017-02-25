package ua.com.internetShop.service;

import java.util.List;

import ua.com.internetShop.entity.MobilePhone;

public interface MobilePhoneService {

	void save (MobilePhone mobilePhones) throws Exception;
	List<MobilePhone> findAll();
	MobilePhone findOne(int id);
	void delete (int id);
	
	List<MobilePhone> findMobilePhoneWithProvider();
}
