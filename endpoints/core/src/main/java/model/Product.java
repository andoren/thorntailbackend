package model;
import java.time.LocalDate;
public class Product {
	public Product() {
		
	}
	private Integer id;
	private String name;
	private String description;
	private Integer price;
	private Boolean issold;
	private Boolean isaccapted;
	private String imagepath;
	private LocalDate created_date;
	private LocalDate deleted_date;
	private LocalDate sold_date;
	
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	public Boolean getIsAccapted() {
		return isaccapted;
	}

	public void setIsAccapted(Boolean isaccapted) {
		this.isaccapted = isaccapted;
	}

	public Boolean getIsSold() {
		return issold;
	}

	public void setIsSold(Boolean issold) {
		this.issold = issold;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDate getCreated_date() {
		return created_date;
	}

	public void setCreated_date(LocalDate created_date) {
		this.created_date = created_date;
	}

	public LocalDate getDeleted_date() {
		return deleted_date;
	}

	public void setDeleted_date(LocalDate deleted_date) {
		this.deleted_date = deleted_date;
	}

	public LocalDate getSold_date() {
		return sold_date;
	}

	public void setSold_date(LocalDate sold_date) {
		this.sold_date = sold_date;
	}


	
}
