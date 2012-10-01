class Cocktail < ActiveRecord::Base
  attr_accessible :name, :notes
  validates :name,  presence: true
  has_many :ingredients, dependent: :destroy
end
