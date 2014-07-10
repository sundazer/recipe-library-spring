package com.phuttunen.recipelibrary;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/recipes")
public class RecipeController {

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String recipeForm(Model model) {
		model.addAttribute("recipe", new Recipe());
		return "recipe_form";
	}
	
    @RequestMapping(value="/add", method=RequestMethod.POST)
    public String greetingSubmit(@ModelAttribute Recipe recipe, Model model) {
        model.addAttribute("recipe", recipe);
        return "result";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String listRecipes() {
    	
    	return "recipes";
    }
}
