package com.phuttunen.recipelibrary;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "recipes")
public class Recipe extends BaseEntity {

	@Column
	@NotEmpty
	private String name;
	@Column
	private String description;
	
	@Column
	private String instructions;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

}
