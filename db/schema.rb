# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_14_182227) do

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.integer "glassware_id"
    t.integer "spirit_id"
    t.string "ingredients"
    t.string "description"
    t.string "image"
  end

  create_table "glasswares", force: :cascade do |t|
    t.string "glass_type"
  end

  create_table "spirits", force: :cascade do |t|
    t.string "spirit_name"
    t.string "description"
  end

end
