class Cocktail < ActiveRecord::Base
  attr_accessible :name
  validates :name,  presence: true
  has_many :ingredients, dependent: :destroy
end
