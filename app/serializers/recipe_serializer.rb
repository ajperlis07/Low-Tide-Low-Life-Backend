class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :instruction, :story, :fish_id, :user_id, :fish, :description
  # has_one :user
  # belongs_to :fish
end
