class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :instruction, :story, :fish_id, :user_id
  # has_one :user
  # has_one :fish
end
