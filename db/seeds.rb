# coding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

################################################
# Maps
################################################
Map.create(
  map_name: 'Map 1',
)

################################################
# Games
################################################
Game.create(
  game_name: 'Game 1',
  map_id:    Map.find_by(map_name: 'Map 1').map_id
)

################################################
# Spaces
################################################
10.times do |i|
  Space.create(
    map_id:            Map.find_by(map_name: 'Map 1').map_id,
    position:          i + 1,
    event_coefficient: 1,
    force_money:       10000
  )
end

################################################
# Events
################################################

################################################
# Players
################################################
4.times do |i|
  Player.create(
    game_id:     Game.find_by(game_name: "Game 1").game_id,
    player_name: "Player #{i + 1}",
    position:    i + 1,
    money:       100000
  )
end

################################################
# Jobs
################################################

################################################
# Colors
################################################
Color.create([
  {color: 'blue',   for_player_number: '2'},
  {color: 'indigo'},
  {color: 'purple'},
  {color: 'pink'},
  {color: 'red',    for_player_number: '1'},
  {color: 'orange'},
  {color: 'yellow', for_player_number: '4'},
  {color: 'green',  for_player_number: '3'},
  {color: 'teal'},
  {color: 'cyan'},
  {color: 'white'},
  {color: 'gray'},
  {color: 'gray-dark'},
  {color: 'black'}
])
