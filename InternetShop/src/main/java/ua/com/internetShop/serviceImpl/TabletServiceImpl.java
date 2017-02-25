package ua.com.internetShop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import ua.com.internetShop.dao.ProviderDao;
import ua.com.internetShop.dao.TabletDao;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.entity.Tablet;
import ua.com.internetShop.service.TabletService;
import ua.com.internetShop.validationTablet.ValidatorTablet;

@Service
public class TabletServiceImpl implements TabletService{

	@Autowired
	private TabletDao tabletDao;
	@Autowired
	private ProviderDao providerDao;

	@Autowired
	@Qualifier("tabletValidator")
	private ValidatorTablet validatorTablet;
	
	public void save(Tablet tablet) throws Exception{
		validatorTablet.validate(tablet);
		tabletDao.save(tablet);
	}

	public List<Tablet> findAll() {
		return tabletDao.findAll();
	}

	public Tablet findOne(int id) {
		return tabletDao.findOne(id);
	}

	public void delete(int id) {
		Tablet tablet = tabletDao.findTabletWithProvider(id);
		for (Provider provider : tablet.getProviders()){
			provider.setTablets(null);
			providerDao.save(provider);
		}
		tabletDao.delete(id);
	}

	public List<Tablet> findTabletWithProvider() {
		return tabletDao.findTabletWithProvider();
	}
	
}
