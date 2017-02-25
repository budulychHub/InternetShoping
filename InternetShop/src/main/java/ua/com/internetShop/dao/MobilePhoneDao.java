package ua.com.internetShop.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.com.internetShop.entity.MobilePhone;

public interface MobilePhoneDao extends JpaRepository<MobilePhone, Integer>{

	@Query("select distinct m from MobilePhone m left join fetch m.providers")
	List<MobilePhone> findMobilePhoneWithProvider();
	
	@Query("select distinct m from MobilePhone m left join fetch m.providers where m.id =:id")
	MobilePhone findMobilePhoneWithProvider(@Param("id") int id);
}
