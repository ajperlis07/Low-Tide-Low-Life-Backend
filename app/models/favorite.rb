class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  belongs_to :fish

  # has_many :recipes
  # has_many :fish, through: :recipes
end
