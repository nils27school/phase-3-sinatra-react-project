class CreateGlassware < ActiveRecord::Migration[6.1]
  def change
    create_table :glassware do |t|
      t.string :glass_type
    end
  end
end
