package com.phuttunen.recipelibrary;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

public interface RecipeService {
	Collection<Recipe> getAllRecipes() throws DataAccessException;
	void saveRecipe(Recipe recipe) throws DataAccessException;
}
