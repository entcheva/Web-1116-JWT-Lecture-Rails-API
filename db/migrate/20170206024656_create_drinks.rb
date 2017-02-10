class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.float :rating
      t.string :source

      t.timestamps
    end
  end
end
