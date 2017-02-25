package ua.com.internetShop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.com.internetShop.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {

	User findByName(String name);
	
	@Query("SELECT CASE WHEN COUNT(u) > 0 THEN true ELSE false END FROM User u WHERE u.name =:name")
	boolean userExistsByName(@Param("name") String name);
	
	@Query("SELECT CASE WHEN COUNT(u) > 0 THEN true ELSE false END FROM User u WHERE u.email =:email")
	boolean userExistsByEmail(@Param("email") String email);
	
	
	@Query("select u from User u where u.UUID =:uuid")
	User findByUUID(@Param("uuid")String uuid);
	
	
	@Query("select distinct u from User u left join fetch u.noteBooks where u.id =:id")
	User fetchUserWithNoteBook(@Param("id") int id);
}
