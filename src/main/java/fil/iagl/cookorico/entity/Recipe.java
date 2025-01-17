package fil.iagl.cookorico.entity;

import java.sql.Timestamp;
import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.Data;

@JsonSerialize
@Data
public class Recipe {
	
	private Integer idRecipe;
	private String name;
	private String description;
	private Integer preparationTime;
	private Integer cookingTime;
	private Member creator;
	private String dish_type; //TO DO ENUM
	private String difficulty; //TO DO ENUM
	private Timestamp creationDate;
	private Timestamp modifDate;
	private Boolean Validation;
	private Administrator validator;
	private Boolean disabled;
	private List<Tag> tags; // TO CHECK IF NOT NEW OBJECT, CREATION DATE IS MISSING.
	private List<RecipeStep> steps;
	private List<Photo> photos;
}
