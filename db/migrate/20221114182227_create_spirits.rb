class CreateSpirits < ActiveRecord::Migration[6.1]
  def change
    create_table :spirits do |t|
      t.string :spirit_name
    end
  end
end
