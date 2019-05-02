class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :allergens, dependent: :destroy
  has_many :users, through: :allergens
end
