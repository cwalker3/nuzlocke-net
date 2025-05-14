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

ActiveRecord::Schema[8.0].define(version: 2025_05_14_194731) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attempts", force: :cascade do |t|
    t.bigint "nuzlocke_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nuzlocke_id"], name: "index_attempts_on_nuzlocke_id"
  end

  create_table "defeated_trainers", force: :cascade do |t|
    t.bigint "attempt_id", null: false
    t.bigint "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attempt_id"], name: "index_defeated_trainers_on_attempt_id"
    t.index ["trainer_id"], name: "index_defeated_trainers_on_trainer_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_games_on_title", unique: true
  end

  create_table "kills", force: :cascade do |t|
    t.bigint "user_pokemon_id", null: false
    t.bigint "trainer_pokemon_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_pokemon_id"], name: "index_kills_on_trainer_pokemon_id"
    t.index ["user_pokemon_id"], name: "index_kills_on_user_pokemon_id"
  end

  create_table "nuzlocke_rules", force: :cascade do |t|
    t.bigint "nuzlocke_id", null: false
    t.bigint "rule_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nuzlocke_id"], name: "index_nuzlocke_rules_on_nuzlocke_id"
    t.index ["rule_id"], name: "index_nuzlocke_rules_on_rule_id"
  end

  create_table "nuzlockes", force: :cascade do |t|
    t.integer "status"
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_nuzlockes_on_game_id"
    t.index ["user_id"], name: "index_nuzlockes_on_user_id"
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "user_pokemon_id", null: false
    t.bigint "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_participations_on_trainer_id"
    t.index ["user_pokemon_id"], name: "index_participations_on_user_pokemon_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "trainer_pokemon", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.integer "hp_iv"
    t.integer "attack_iv"
    t.integer "defense_iv"
    t.integer "special_attack_iv"
    t.integer "special_defense_iv"
    t.integer "speed_iv"
    t.string "nature"
    t.string "move1"
    t.string "move2"
    t.string "move3"
    t.string "move4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_trainer_pokemon_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.bigint "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_trainers_on_area_id"
  end

  create_table "user_pokemon", force: :cascade do |t|
    t.integer "nature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "species"
    t.string "nickname"
    t.string "hp_iv"
    t.string "hp_attack"
    t.string "hp_defense"
    t.string "hp_special_attack"
    t.string "hp_special_defense"
    t.string "hp_speed"
    t.integer "status"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "uid"
    t.string "provider"
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wild_pokemons", force: :cascade do |t|
    t.integer "method"
    t.integer "rate"
    t.bigint "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_wild_pokemons_on_area_id"
  end

  add_foreign_key "attempts", "nuzlockes"
  add_foreign_key "defeated_trainers", "attempts"
  add_foreign_key "defeated_trainers", "trainers"
  add_foreign_key "kills", "trainer_pokemon"
  add_foreign_key "kills", "user_pokemon"
  add_foreign_key "nuzlocke_rules", "nuzlockes"
  add_foreign_key "nuzlocke_rules", "rules"
  add_foreign_key "nuzlockes", "games"
  add_foreign_key "nuzlockes", "users"
  add_foreign_key "participations", "trainers"
  add_foreign_key "participations", "user_pokemon"
  add_foreign_key "trainer_pokemon", "trainers"
  add_foreign_key "trainers", "areas"
  add_foreign_key "wild_pokemons", "areas"
end
