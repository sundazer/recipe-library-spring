package com.phuttunen.recipelibrary;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/*
 *  Extended by any entity class which needs id
 */
@MappedSuperclass
public class BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected Integer id;
	
	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
	
	public boolean isNew() {
		return (this.id == null);
	}
}
