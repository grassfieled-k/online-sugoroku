json.extract! event, :id, :event_name, :event_type, :message, :default_money, :default_intelligence, :default_strength, :default_morality, :created_at, :updated_at
json.url event_url(event, format: :json)
