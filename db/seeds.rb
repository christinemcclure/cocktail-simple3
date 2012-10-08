# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.delete_all
Ingredient.delete_all

cocktail = Cocktail.create(:name => "Sazerac", :notes => "Mix all")
ingredients = cocktail.ingredients.create([
  {:ingredient => "3 oz rye whiskey"},
  {:ingredient => "3/4 oz simple syrup"},
  {:ingredient => "spash absinthe"}
])

cocktail = Cocktail.create(:name => "Singapore Sling", :notes => "Mix all")
ingredients = cocktail.ingredients.create([
  {:ingredient => "1/2 oz grenadine"},
  {:ingredient => "1 oz gin"},
  {:ingredient => "club soda"}
])

cocktail = Cocktail.create(:name => "Manhattan", :notes => "Mix all")

