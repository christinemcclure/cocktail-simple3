class AddNotesToCocktails < ActiveRecord::Migration
  def change
    add_column :cocktails, :notes, :text
  end
end
