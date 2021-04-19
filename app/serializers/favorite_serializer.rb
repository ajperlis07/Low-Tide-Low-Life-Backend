class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :user_id, :fish_id, :recipe, :fish

  # has_many :fish, through: :recipes
  # has_one :user
  # has_one :recipe
  # has_one :fish
end
