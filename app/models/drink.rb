class Drink < ApplicationRecord
  has_many :drink_categories
  has_many :categories, through: :drink_categories

  def self.create_beers
    get_beers["data"].map do |e|
      name = e["name"] ? e["name"].gsub(/["]/, "'") : "Not Found"
      description = e["description"] ? e["description"].gsub(/["]/, "'") : "Not Found"
      rating = e["ibu"] ? e["ibu"].to_f : 0.0
      category = e["style"] ? e["style"]["name"] : "Not Found"
      category_description = e["style"] ? e["style"]["description"] : "Not Found"
      new_category = Category.create_with(description: category_description).find_or_create_by(name: category)
      drink = Drink.create(name: name, description: description, rating: rating)
      drink.categories << new_category
      drink.save
    end
  end

  def self.get_beers
    JSON.parse(RestClient.get("http://api.brewerydb.com/v2/beers/?name=*&key=#{ENV["BREWERY_DB_API_KEY"]}"))
  end
end
