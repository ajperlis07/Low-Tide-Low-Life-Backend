class AddDescriptionToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :description, :string
  end
end
