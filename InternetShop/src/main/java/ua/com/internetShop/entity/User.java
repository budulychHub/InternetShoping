package ua.com.internetShop.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import ua.com.internetShop.entity.Role;

@Entity
public class User implements UserDetails{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String password;
	
	private String pathImage;
	private boolean enabled;
	private String UUID;
	
	
	@Enumerated
	private Role role;
	
	public User() {
	}


	public User(String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}
	
	@ManyToMany
	@JoinTable(name="user_notebook",
	joinColumns=@JoinColumn(name="user_id"),
	inverseJoinColumns=@JoinColumn(name="notebook_id"))
	private List<NoteBook> noteBooks;
	
	
	@ManyToMany
	@JoinTable(name="user_mobilephone",
	joinColumns=@JoinColumn(name="user_id"),
	inverseJoinColumns=@JoinColumn(name="mobilephone_id"))
	private List<MobilePhone> mobilePhones;
	
	
	@ManyToMany
	@JoinTable(name="user_tv",
	joinColumns=@JoinColumn(name="user_id"),
	inverseJoinColumns=@JoinColumn(name="tv_id"))
	private List<Tv> tvs;
	
	
	@ManyToMany
	@JoinTable(name="user_tablet",
	joinColumns=@JoinColumn(name="user_id"),
	inverseJoinColumns=@JoinColumn(name="tablet_id"))
	private List<Tablet> tablets;

	public List<NoteBook> getNoteBooks() {
		return noteBooks;
	}


	public void setNoteBooks(List<NoteBook> noteBooks) {
		this.noteBooks = noteBooks;
	}


	public List<MobilePhone> getMobilePhones() {
		return mobilePhones;
	}


	public void setMobilePhones(List<MobilePhone> mobilePhones) {
		this.mobilePhones = mobilePhones;
	}


	public List<Tv> getTvs() {
		return tvs;
	}


	public void setTvs(List<Tv> tvs) {
		this.tvs = tvs;
	}


	public List<Tablet> getTablets() {
		return tablets;
	}


	public void setTablets(List<Tablet> tablets) {
		this.tablets = tablets;
	}


	public String getUUID() {
		return UUID;
	}
	public void setUUID(String uUID) {
		UUID = uUID;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
	public String getPathImage() {
		return pathImage;
	}
	public void setPathImage(String pathImage) {
		this.pathImage = pathImage;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(role.name()));
		return null;
	}
	
	public String getUsername() {
		return String.valueOf(id);
	}
	
	public boolean isAccountNonExpired() {
		return true;
	}
	
	public boolean isAccountNonLocked() {
		return true;
	}
	
	public boolean isCredentialsNonExpired() {
		return true;
	}
	
	public boolean isEnabled() {
		return enabled;
	}
	
	
	
	
	
	
	
}
