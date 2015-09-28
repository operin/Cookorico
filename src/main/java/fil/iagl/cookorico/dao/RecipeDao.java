package fil.iagl.cookorico.dao;

import java.util.List;

import fil.iagl.cookorico.entity.Recipe;

public interface RecipeDao {
	
	List<Recipe> getRecipesById();	
}
