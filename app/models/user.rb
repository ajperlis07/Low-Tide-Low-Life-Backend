class User < ApplicationRecord
    has_many :recipes
    has_many :fish, through: :recipes
end
