json.extract! event, :event_id, :event_name, :message, :force_money, :force_intelligence, :force_physicality, :force_sense, :force_morality, :created_at, :updated_at
json.url event_url(event, format: :json)
