json.extract! player, :player_id, :player_name, :position, :money, :job_id, :home_id, :intelligence, :strength, :sense, :morality, :created_at, :updated_at
json.url player_url(player, format: :json)
