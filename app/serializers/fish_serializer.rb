class FishSerializer < ActiveModel::Serializer
  attributes :id, :species_name, :scientific_name, :image_gallery, :biology, :population, :calories, :carbohydrate, :cholesterol, :fat_total, :health_benefits, :physical_description, :protein, :saturated_fat, :selenium, :serving_weight, :sodium, :path
  has_many :recipes
end
