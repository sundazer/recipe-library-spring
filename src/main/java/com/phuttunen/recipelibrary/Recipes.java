package com.phuttunen.recipelibrary;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Collection class to handle xml mappings
 * @author feeres
 *
 */
@XmlRootElement
public class Recipes {
	private List<Recipe> recipes;
	
	@XmlElement
	public List<Recipe> getRecipeList() {
		if (recipes == null) {
			recipes = new ArrayList<Recipe>();
		}
		return recipes;
	}
}
