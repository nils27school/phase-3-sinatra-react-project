class CreateGlasswares < ActiveRecord::Migration[6.1]
  def change
    create_table :glasswares do |t|
      t.string :glass_type
    end
  end
end
