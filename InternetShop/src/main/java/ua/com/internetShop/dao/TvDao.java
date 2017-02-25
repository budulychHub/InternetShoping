package ua.com.internetShop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.com.internetShop.entity.Tv;

public interface TvDao extends JpaRepository<Tv, Integer> {

	@Query("select distinct s from Tv s left join fetch s.providers")
	List<Tv> findTvWithProvider();
	
	@Query("select distinct s from Tv s left join fetch s.providers where s.id =:id")
	Tv findTvWithProvider(@Param("id") int id);
}
