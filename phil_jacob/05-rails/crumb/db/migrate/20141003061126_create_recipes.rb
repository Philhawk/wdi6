class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
	t.string :name
	t.string :calorie
	t.string :ingredient
	t.text :image
    end
  end
end
