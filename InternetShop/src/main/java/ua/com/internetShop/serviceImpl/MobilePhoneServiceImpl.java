package ua.com.internetShop.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import ua.com.internetShop.dao.MobilePhoneDao;
import ua.com.internetShop.dao.ProviderDao;
import ua.com.internetShop.entity.MobilePhone;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.service.MobilePhoneService;
import ua.com.internetShop.validationMobilePhone.ValidatorMobilePhone;

@Service
public class MobilePhoneServiceImpl implements MobilePhoneService{

	@Autowired
	private MobilePhoneDao mobilePhoneDao;
	@Autowired
	private ProviderDao providerDao;
	
	@Autowired
	@Qualifier("mobilePhoneValidator")
	private ValidatorMobilePhone validatorMobilePhone;
	
	public void save(MobilePhone mobilePhone) throws Exception{
		validatorMobilePhone.validate(mobilePhone);
		mobilePhoneDao.save(mobilePhone);
	}

	public List<MobilePhone> findAll() {
		return mobilePhoneDao.findAll();
	}

	public MobilePhone findOne(int id) {
		return mobilePhoneDao.findOne(id);
	}

	public void delete(int id) {
		MobilePhone mobilePhone = mobilePhoneDao.findMobilePhoneWithProvider(id);
		for(Provider provider : mobilePhone.getProviders()){
			provider.setMobilePhones(null);
			providerDao.save(provider);
		}
		mobilePhoneDao.delete(id);
	}

	public List<MobilePhone> findMobilePhoneWithProvider() {
		return mobilePhoneDao.findMobilePhoneWithProvider();
	}

}
