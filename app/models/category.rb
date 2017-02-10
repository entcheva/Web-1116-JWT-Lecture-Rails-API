class Category < ApplicationRecord
  has_many :drink_categories
  has_many :drinks, through: :drink_categories
end
