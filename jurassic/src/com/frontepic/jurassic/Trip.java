package com.frontepic.jurassic;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.frontepic.jurassic.validation.FirearmExperience;

public class Trip {

	private String firstName;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	private String lastName;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	private String email;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	private String kind;
	
	private String season;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	private String[] species;
	
	@NotNull(message="is required")
	@Min(value=18, message="must be at least 18")
	@Max(value=80, message="must be not greater than 80")
	private Integer age;
	
	@NotNull(message="is required")
	@FirearmExperience
	private String firearmExperience;
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getKind() {
		return kind;
	}
	
	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String[] getSpecies() {
		return species;
	}

	public void setSpecies(String[] species) {
		this.species = species;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getFirearmExperience() {
		return firearmExperience;
	}

	public void setFirearmExperience(String firearmExperience) {
		this.firearmExperience = firearmExperience;
	}
	
}
