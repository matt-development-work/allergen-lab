class User < ApplicationRecord
  has_many :allergens, dependent: :destroy
  has_many :ingredients, through: :allergens
  has_many :recipes

end
