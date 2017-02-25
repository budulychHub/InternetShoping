package ua.com.internetShop.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.com.internetShop.entity.Tv;

public interface TvService {
 
	void save (Tv tvs) throws Exception;
	List<Tv> findAll();
	Tv findOne (int id);
	void delete (int id);
	
	List<Tv> findTvWithProvider();
	
	void saveImg(int idTv, MultipartFile multipartFile);
	
}
