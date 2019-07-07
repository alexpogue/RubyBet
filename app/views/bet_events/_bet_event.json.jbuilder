json.extract! bet_event, :id, :name, :description, :end_time, :status, :winning_option, :created_at, :updated_at
json.url bet_event_url(bet_event, format: :json)
