package ua.com.internetShop.dto;

public class TvDto {

	private String brand;
	private double display;
	private double price;
	
	public TvDto() {
		
	}

	public TvDto(String brand, double display, double price) {
		super();
		this.brand = brand;
		this.display = display;
		this.price = price;
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
	
}
