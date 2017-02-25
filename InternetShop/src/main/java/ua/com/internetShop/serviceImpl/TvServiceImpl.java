package ua.com.internetShop.serviceImpl;

import java.io.File;

import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ua.com.internetShop.dao.ProviderDao;
import ua.com.internetShop.dao.TvDao;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.entity.Tv;
import ua.com.internetShop.service.TvService;
import ua.com.internetShop.validationTv.ValidatorTv;

@Service
public class TvServiceImpl implements TvService{

	@Autowired
	private TvDao tvDao;
	@Autowired
	private ProviderDao providerDao;

	@Autowired
	@Qualifier("tvValidator")
	private ValidatorTv validatorTv;
	
	public void save(Tv tv) throws Exception{
		validatorTv.validate(tv);
		tvDao.save(tv);
	}

	public List<Tv> findAll() {
		return tvDao.findAll();
	}

	public Tv findOne(int id) {
		return tvDao.findOne(id);
	}

	public void delete(int id) {
		Tv tv = tvDao.findTvWithProvider(id);
		for(Provider  provider : tv.getProviders()){
			provider.setTvs(null);
			providerDao.save(provider);
		}
		tvDao.delete(id);
	}

	public List<Tv> findTvWithProvider() {
		return tvDao.findTvWithProvider();
	}

	@Override
	public void saveImg(int idTv, MultipartFile multipartFile) {
		// TODO Auto-generated method stub
		
	}

}
