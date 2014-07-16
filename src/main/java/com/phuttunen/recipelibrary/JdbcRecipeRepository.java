package com.phuttunen.recipelibrary;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

@Repository
public class JdbcRecipeRepository implements RecipeRepository {

	private SimpleJdbcInsert insert;
	private NamedParameterJdbcTemplate namedParamJdbcTemplate;
	
	@Autowired
	public JdbcRecipeRepository(DataSource dataSource, NamedParameterJdbcTemplate namedParamJdbcTemplate) {
		this.insert = new SimpleJdbcInsert(dataSource).withTableName("recipes")
							.usingGeneratedKeyColumns("id");
		this.namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public void save(Recipe recipe) throws DataAccessException {
        BeanPropertySqlParameterSource parameterSource = new BeanPropertySqlParameterSource(recipe);
        if (recipe.isNew()) {
            Number newKey = this.insert.executeAndReturnKey(parameterSource);
            recipe.setId(newKey.intValue());
        } else {
            this.namedParamJdbcTemplate.update(
                    "UPDATE recipes SET name=:name, description=:description, " +
                            "instructions=:instructions WHERE id=:id",
                    parameterSource);
        }
	}

	@Override
	public Collection<Recipe> findAll() throws DataAccessException {
		List<Recipe> recipes = new ArrayList<Recipe>();
        Map<String, Object> params = new HashMap<String, Object>();
		recipes.addAll(this.namedParamJdbcTemplate.query(
                "SELECT id, name, description, instructions FROM recipes ORDER BY name",
                params,
                ParameterizedBeanPropertyRowMapper.newInstance(Recipe.class)));
		
		return recipes;
	}
	
}
