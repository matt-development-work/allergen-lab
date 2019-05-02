class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  validates :name, uniqueness: {case_sensitive: false}
  validates :user_id, :name, presence: true
  
  def user_name
    self.user.name
  end

  def ingredients_count 
  	self.ingredients.count
  end 

  def self.search(search)
  	if search
  		recipe = Recipe.find_by(name: search)
  		if recipe
  			if !recipe.ingredients.empty?
  				self.where(name: search)
  			else 
  				self.where(name: search)
  			end 
  		else
  			Recipe.all.sort_by do |recipe| recipe.ingredients.count end.reverse
  		end 
  	else
  		Recipe.all.sort_by do |recipe| recipe.ingredients.count end.reverse
    end 
  end
end
