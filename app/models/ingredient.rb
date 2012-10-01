class Ingredient < ActiveRecord::Base
  attr_accessible :cocktail_id, :ingredient
  validates :ingredient,  presence: true
  belongs_to :cocktail
end
