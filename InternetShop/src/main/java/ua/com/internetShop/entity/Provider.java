package ua.com.internetShop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Provider {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String phone;
	
	public Provider() {
	}

	public Provider(String name, String email, String phone) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	
	@ManyToMany
	@JoinTable(name="provider_notebook",
	joinColumns=@JoinColumn(name="provider_id"),
	inverseJoinColumns=@JoinColumn(name="notebook_id"))
	private List<NoteBook> noteBooks;
	
	
	@ManyToMany
	@JoinTable(name="provider_mobilePhone",
	joinColumns=@JoinColumn(name="provider_id"),
	inverseJoinColumns=@JoinColumn(name="mobilePhone_id"))
	private List<MobilePhone> mobilePhones;
	
	
	@ManyToMany
	@JoinTable(name="provider_tv",
	joinColumns=@JoinColumn(name="provider_id"),
	inverseJoinColumns=@JoinColumn(name="tv_id"))
	private List<Tv> tvs;
	
	@ManyToMany
	@JoinTable(name="provider_tablet",
	joinColumns=@JoinColumn(name="provider_id"),
	inverseJoinColumns=@JoinColumn(name="tablet_id"))
	private List<Tablet> tablets;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

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
}
