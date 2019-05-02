# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "User 1")
user2 = User.create(name: "User 2")
user3 = User.create(name: "User 3")

ingredient1 = Ingredient.create(name: "Ingredient 1")
ingredient2 = Ingredient.create(name: "Ingredient 2")
ingredient3 = Ingredient.create(name: "Ingredient 3")

recipe1 = Recipe.create(name: "Recipe 1", user_id: 1)
recipe2 = Recipe.create(name: "Recipe 2", user_id: 1)
recipe3 = Recipe.create(name: "Recipe 3", user_id: 1)
recipe4 = Recipe.create(name: "Recipe 4", user_id: 2)
recipe5 = Recipe.create(name: "Recipe 5", user_id: 2)
recipe6 = Recipe.create(name: "Recipe 6", user_id: 2)
recipe7 = Recipe.create(name: "Recipe 7", user_id: 3)

recipe_ingr_1 = RecipeIngredient.create(recipe_id: 1, ingredient_id: 1)
recipe_ingr_2 = RecipeIngredient.create(recipe_id: 1, ingredient_id: 2)
recipe_ingr_3 = RecipeIngredient.create(recipe_id: 1, ingredient_id: 3)
recipe_ingr_4 = RecipeIngredient.create(recipe_id: 2, ingredient_id: 3)
recipe_ingr_5 = RecipeIngredient.create(recipe_id: 3, ingredient_id: 1)

allergen1 = Allergen.create(user_id: 1, ingredient_id: 1)
allergen2 = Allergen.create(user_id: 2, ingredient_id: 3)
allergen3 = Allergen.create(user_id: 3, ingredient_id: 1)
allergen4 = Allergen.create(user_id: 3, ingredient_id: 2)
