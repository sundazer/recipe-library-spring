package com.phuttunen.recipelibrary;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeLibraryService implements RecipeService {

	private RecipeRepository recipeRepository;
	
	@Autowired
	public RecipeLibraryService(RecipeRepository recipeRepository) {
		this.recipeRepository = recipeRepository;
	}
	
	@Override
	@Transactional
	public void saveRecipe(Recipe recipe) throws DataAccessException {
		recipeRepository.save(recipe);
	}

	@Override
	@Transactional
	public Collection<Recipe> getAllRecipes() throws DataAccessException {
		return recipeRepository.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Recipe findRecipeById(int recipeId) throws DataAccessException {
		return recipeRepository.findById(recipeId);
	}

}
