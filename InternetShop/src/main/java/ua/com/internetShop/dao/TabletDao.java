package ua.com.internetShop.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.internetShop.entity.Tablet;

public interface TabletDao extends JpaRepository<Tablet, Integer> {

	@Query("select distinct t from Tablet t left join fetch t.providers")
	List<Tablet> findTabletWithProvider();
	
	@Query("select distinct t from Tablet t left join fetch t.providers where t.id =:id")
	Tablet findTabletWithProvider(@Param("id") int id);
}
