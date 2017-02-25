package ua.com.internetShop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.com.internetShop.entity.NoteBook;

public interface NoteBookDao extends JpaRepository<NoteBook, Integer> {

	@Query("select distinct b from NoteBook b left join fetch b.providers")
	List<NoteBook> findNoteBookWithProvider();
	
	@Query("select distinct b from NoteBook b left join fetch b.providers where b.id =:id")
	NoteBook findNoteBookWithProvider(@Param("id") int id);
	
//	@Query("SELECT CASE WHEN COUNT(b) > 0 THEN true ELSE false END FROM NoteBook b WHERE b.brand =:brand")
//	boolean noteBookExistsByName(@Param("brand") String brand);
}
