package com.phuttunen.recipelibrary;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/recipes")
public class RecipeController {

	private final RecipeService recipeService;	
	
	@Autowired
	public RecipeController(RecipeService recipeService) {
		this.recipeService = recipeService;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String recipeForm(Model model) {
		model.addAttribute("recipe", new Recipe());
		return "recipe_form";
	}
	
    @RequestMapping(value="/add", method=RequestMethod.POST)
    public String greetingSubmit(@ModelAttribute Recipe recipe, Model model) {
        model.addAttribute("recipe", recipe);
        this.recipeService.saveRecipe(recipe);
        return "redirect:/recipes";
    }
    
    @RequestMapping(value="/recipes")
    public String listRecipes(Model model) {
    	Collection<Recipe> recipes = new ArrayList<Recipe>();
    	recipes.addAll(this.recipeService.getAllRecipes());
    	model.addAttribute("recipes", recipes);
    	return "recipes_list";
    }
}
