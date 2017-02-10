class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating, :source
  has_many :categories
end
