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

ActiveRecord::Schema[7.0].define(version: 2022_09_30_180541) do
  create_table "character_films", force: :cascade do |t|
    t.integer "character_ID"
    t.integer "Film_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_homeworlds", force: :cascade do |t|
    t.integer "character_ID"
    t.integer "homeworld_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_star_ships", force: :cascade do |t|
    t.integer "character_ID"
    t.integer "starship_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "homeworld"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "homeworlds_id"
    t.integer "homeworld_id"
    t.integer "species_id"
    t.integer "character_films_id"
    t.integer "character_star_ships_id"
    t.index ["character_films_id"], name: "index_characters_on_character_films_id"
    t.index ["character_star_ships_id"], name: "index_characters_on_character_star_ships_id"
    t.index ["homeworld_id"], name: "index_characters_on_homeworld_id"
    t.index ["homeworlds_id"], name: "index_characters_on_homeworlds_id"
    t.index ["species_id"], name: "index_characters_on_species_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.string "opening_crawl"
    t.string "director"
    t.string "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_films_id"
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
  end

  create_table "species", force: :cascade do |t|
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

  add_foreign_key "characters", "character_films", column: "character_films_id"
  add_foreign_key "characters", "character_star_ships", column: "character_star_ships_id"
  add_foreign_key "characters", "homeworlds"
  add_foreign_key "characters", "species"
  add_foreign_key "films", "character_films", column: "character_films_id"
  add_foreign_key "starships", "character_star_ships", column: "character_star_ships_id"
end
