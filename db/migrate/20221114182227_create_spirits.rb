class CreateSpirits < ActiveRecord::Migration[6.1]
  def change
    create_table :spirits do |t|
      t.string :spirit_name
      t.string :description
      t.string :image
    end
  end
end
