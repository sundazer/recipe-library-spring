package com.phuttunen.recipelibrary;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

public interface RecipeRepository {

	Collection<Recipe> findAll() throws DataAccessException;
	void save(Recipe recipe) throws DataAccessException;
	Recipe findById(int recipeId) throws DataAccessException;
}
