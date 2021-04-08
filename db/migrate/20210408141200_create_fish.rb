class CreateFish < ActiveRecord::Migration[6.1]
  def change
    create_table :fish do |t|
      t.string :species_name
      t.string :scientific_name
      t.string :image_gallery
      t.string :biology
      t.string :population
      t.string :calories
      t.string :carbohydrate
      t.string :cholesterol
      t.string :fat_total
      t.string :health_benefits
      t.string :physical_description
      t.string :protein
      t.string :saturated_fat
      t.string :selenium
      t.string :serving_weight
      t.string :sodium
      t.string :path

      t.timestamps
    end
  end
end
