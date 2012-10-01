# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.delete_all
Cocktail.create(:name => "Sazerac", :notes => "Mix all")
Cocktail.create(:name => "Singapore Sling", :notes => "Mix all")
Cocktail.create(:name => "Manhattan", :notes => "Mix all")

Ingredient.delete_all
Ingredient.create(:ingredient => "3 oz rye whiskey", :cocktail_id => 1)
Ingredient.create(:ingredient => "3/4 oz simple syrup", :cocktail_id => 1)
Ingredient.create(:ingredient => "spash absinthe", :cocktail_id => 1)

Ingredient.create(:ingredient => "1/2 oz grenadine", :cocktail_id => 2)
Ingredient.create(:ingredient => "1 oz gin", :cocktail_id => 2)
Ingredient.create(:ingredient => "club soda", :cocktail_id => 2)
