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
public class MobilePhone {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String brand;
	private double display;
	private double price;
	
	
	@ManyToMany
	@JoinTable(name="user_mobilephone",
	joinColumns=@JoinColumn(name="mobilephone_id"),
	inverseJoinColumns=@JoinColumn(name="user_id"))
	private List<User> users;
	
	@ManyToMany
	@JoinTable(name="provider_mobilephone",
	joinColumns=@JoinColumn(name="mobilephone_id"),
	inverseJoinColumns=@JoinColumn(name="provider_id"))
	private List<Provider> providers;
	
	public MobilePhone() {
	}

	public MobilePhone(String brand, double display, double price) {
		super();
		this.brand = brand;
		this.display = display;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public double getDisplay() {
		return display;
	}

	public void setDisplay(double display) {
		this.display = display;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Provider> getProviders() {
		return providers;
	}

	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}

}
