class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name,
      t.string :glassware,
      t.string :spirit,
      t.string :description
    end
  end
end
