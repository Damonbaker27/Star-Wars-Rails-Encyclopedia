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

ActiveRecord::Schema[7.0].define(version: 2022_10_01_201518) do
  create_table "character_films", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters_id"
    t.integer "films_id"
    t.integer "character_id"
    t.integer "film_id"
    t.index ["characters_id"], name: "index_character_films_on_characters_id"
    t.index ["films_id"], name: "index_character_films_on_films_id"
  end

  create_table "character_star_ships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters_id"
    t.integer "starships_id"
    t.integer "starship_id"
    t.integer "character_id"
    t.index ["characters_id"], name: "index_character_star_ships_on_characters_id"
    t.index ["starships_id"], name: "index_character_star_ships_on_starships_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.integer "birth_year"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "homeworld_id"
    t.integer "race_id"
    t.string "imagepath"
    t.index ["homeworld_id"], name: "index_characters_on_homeworld_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.string "opening_crawl"
    t.string "director"
    t.string "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_films_id"
    t.string "imagepath"
    t.index ["character_films_id"], name: "index_films_on_character_films_id"
  end

  create_table "homeworlds", force: :cascade do |t|
    t.string "name"
    t.integer "rotation_period"
    t.integer "orbital_period"
    t.integer "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.integer "surface_water"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imagepath"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.integer "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.integer "average_lifespan"
    t.string "language"
    t.string "homeworld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.integer "cost_in_credits"
    t.integer "length"
    t.integer "max_atmospgering_speed"
    t.integer "crew"
    t.integer "passengers"
    t.integer "cargo_capacity"
    t.string "consumables"
    t.integer "hyperdrive_rating"
    t.integer "mglt"
    t.string "starship_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_star_ships_id"
    t.index ["character_star_ships_id"], name: "index_starships_on_character_star_ships_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.integer "cost_in_credits"
    t.integer "length"
    t.integer "crew"
    t.integer "passengers"
    t.integer "cargo_capacity"
    t.string "consumables"
    t.string "vehicle_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "character_films", "characters", column: "characters_id"
  add_foreign_key "character_films", "films", column: "films_id"
  add_foreign_key "character_star_ships", "characters", column: "characters_id"
  add_foreign_key "character_star_ships", "starships", column: "starships_id"
  add_foreign_key "films", "character_films", column: "character_films_id"
  add_foreign_key "starships", "character_star_ships", column: "character_star_ships_id"
end
