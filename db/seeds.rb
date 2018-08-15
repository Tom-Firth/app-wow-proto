# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Personnage.delete_all

serve = ['Server1', 'Server2', 'Server3']
local = ['FR', 'EN', 'USA']
desc = ['Mage', 'Voleur', 'Archer', 'Guerrier', 'Gardien']

50.times do |i|
  toto = User.create(username: "toto#{i}", localisation: local.sample)
  rand(1..4).times do |y|
    Personnage.create(name: "perso#{i}#{y}", server: serve.sample, description: desc.sample, user: toto)
  end
end
  # create_table "personnages", force: :cascade do |t|
  #   t.string "name"
  #   t.string "server"
  #   t.text "description"
  #   t.integer "user"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false


  # create_table "recherches", force: :cascade do |t|
  #   t.string "title"
  #   t.text "description"
  #   t.integer "user"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false


  # create_table "users", force: :cascade do |t|
  #   t.string "username"
  #   t.string "localisation"
  #   t.boolean "dispo", default: false
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false

