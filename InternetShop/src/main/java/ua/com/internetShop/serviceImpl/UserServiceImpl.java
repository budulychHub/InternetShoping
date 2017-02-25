package ua.com.internetShop.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import ua.com.internetShop.dao.NoteBookDao;
import ua.com.internetShop.dao.UserDao;
import ua.com.internetShop.entity.NoteBook;
import ua.com.internetShop.entity.Role;
import ua.com.internetShop.entity.User;
import ua.com.internetShop.service.UserService;
import ua.com.internetShop.validation.ValidatorUser;
import ua.com.internetShop.validationImgUser.ValidatorImgUser;

@Service("userDetailsService")
public class UserServiceImpl  implements UserService, UserDetailsService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	@Qualifier("userValidator")
	private ValidatorUser validator;
	
	@Autowired
	@Qualifier("imgUserValidator")
	private ValidatorImgUser validatorImgUser;
	
	
	public void save(User user) throws Exception{

		validator.validate(user);
		
		user.setRole(Role.ROLE_USER);
		user.setPassword(encoder.encode(user.getPassword()));
		userDao.save(user);
	}

	public List<User> findAll() {
		return userDao.findAll();
	}

	public User findOne(int id) {
		return userDao.findOne(id);
	}

	public void delete(int id) {
		userDao.delete(id);
		
	}
	
	public User findByName(String name) {
		return userDao.findByName(name);
	}
	
	public User findByUuid(String uuid) {
		return userDao.findByUUID(uuid);
	}
	
	public void update(User user) {
		userDao.save(user);
	}
	
	@Override
	public void updateProfile(User user) {
		user.setPassword(encoder.encode(user.getPassword()));
        userDao.save(user);
	}
	

	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		return userDao.findByName(name);
	}

	@Override
	@Transactional
	public void saveImage(Principal principal, MultipartFile multipartFile)
			throws Exception	{
		
//		validatorImgUser.validate(userDao.findOne(Integer.parseInt(principal.getName())));
		
		User user = userDao.findOne(Integer.parseInt(principal.getName()));

        String path = System.getProperty("catalina.home") + "/resources/"
                + user.getName() + "/" + multipartFile.getOriginalFilename();

        user.setPathImage("resources/" + user.getName() + "/" + multipartFile.getOriginalFilename());

        File file = new File(path);

        try {
            file.mkdirs();
            try {
                FileUtils.cleanDirectory
                        (new File(System.getProperty("catalina.home") + "/resources/" + user.getName() + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("error with file");
        }
	}

	@Override
	public User fetchUserWithNoteBook(int id){
		
		return userDao.fetchUserWithNoteBook(id);
	}

	
	///////////////////////////////
	//for cookie
	
	
	@Autowired
	private NoteBookDao noteBookDao;
	
	@Override
	public Cookie intoBasket(int id, HttpServletRequest request, HttpServletResponse response) {
		request.getSession(false);
		NoteBook noteBook = noteBookDao.findOne(id);
		Cookie cookieNoteBook = 
				new Cookie(noteBook.getBrand(),
						String.valueOf(noteBook.getId()));
		
		cookieNoteBook.setMaxAge(24 * 60 * 60 * 60);
		cookieNoteBook.setHttpOnly(true);
		cookieNoteBook.setPath("/");
		
		response.addCookie(cookieNoteBook);
		return cookieNoteBook;
	}

	public List<NoteBook> userNoteBooksCookie(HttpServletRequest request) {
		
		request.getSession(false);
		List<NoteBook> noteBooks = new ArrayList<>();
		for(Cookie  cookie : request.getCookies()){
			if (cookie.getName().equals("JSESSIONID")) {
				
			}else {
				noteBooks.add(noteBookDao.findOne(Integer.parseInt(cookie.getValue())));
			}
		}
		return noteBooks;
	}

	@Transactional
	public void getOrder(Principal principal, String id, HttpServletRequest request, HttpServletResponse response) {
		User user = userDao.fetchUserWithNoteBook(Integer.parseInt(principal.getName()));
        NoteBook noteBook = noteBookDao.findOne(Integer.parseInt(id));
        user.getNoteBooks().add(noteBook);

        Cookie[] cookies = request.getCookies();
        sortCookie(cookies, id, response);
		
	}

	public void deleteCookieFromOrder(String id, HttpServletRequest request, HttpServletResponse response) {
		 Cookie[] cookies = request.getCookies();
	        sortCookie(cookies, id, response);
	}

	
	 public void sortCookie(Cookie[] cookies, String id, HttpServletResponse response) {
	        for (int i = 0; i < cookies.length; i++) {
	            if (id.equals(cookies[i].getValue())) {
	                Cookie cookie = new Cookie(cookies[i].getName(), null);
	                cookie.setHttpOnly(true);
	                cookie.setPath("/");
	                cookie.setValue(null);
	                cookie.setMaxAge(0);
	                response.addCookie(cookie);
	            }
	        }
	    }

}
