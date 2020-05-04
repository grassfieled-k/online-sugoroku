json.extract! game, :id, :game_name, :map_id, :created_at, :updated_at
json.url game_url(game, format: :json)
