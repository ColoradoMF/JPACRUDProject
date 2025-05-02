package com.skilldistillery.skiruns.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "ski_run")
public class SkiRun {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String area;
	@Column (name="lift_access")
	private Boolean liftAccess;
	@Column (name="image_url")
	private String imageUrl;
	private Integer vertical;
	private String rating;
	private String description;
	private Double latitude;
	private Double longitude;
	private String state;
	private String country;
	
	public SkiRun() {
		super();
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

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Integer getVertical() {
		return vertical;
	}

	public void setVertical(Integer vertical) {
		this.vertical = vertical;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public Boolean isLiftAccess() {
		return liftAccess;
	}

	public void setLiftAccess(Boolean liftAccess) {
		this.liftAccess = liftAccess;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SkiRun [id=").append(id).append(", name=").append(name).append(", area=").append(area)
				.append(", imageUrl=").append(imageUrl).append(", vertical=").append(vertical).append(", rating=")
				.append(rating).append(", liftAccess=").append(liftAccess).append(", description=").append(description)
				.append(", latitude=").append(latitude).append(", longitude=").append(longitude).append(", state=")
				.append(state).append(", country=").append(country).append("]");
		return builder.toString();
	}
	
}
