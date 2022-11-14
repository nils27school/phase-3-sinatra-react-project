class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :glassware_id
      t.integer :spirit_id
      t.string :ingredients
      t.string :description
     
    end
  end
end
