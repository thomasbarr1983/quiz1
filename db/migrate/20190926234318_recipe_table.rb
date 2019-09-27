class RecipeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :ingredients
      t.string :name
      t.string :cooking_method
      t.timestamps
    end  
  end
end