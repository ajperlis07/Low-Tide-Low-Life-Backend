class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :instruction, :story
  has_one :user
  has_one :fish
end
