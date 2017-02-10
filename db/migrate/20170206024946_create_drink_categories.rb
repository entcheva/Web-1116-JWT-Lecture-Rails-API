class CreateDrinkCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :drink_categories do |t|
      t.references :drink, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
