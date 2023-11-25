json.extract! event, :id, :title, :season, :season_start, :season_end, :created_at, :updated_at
json.url event_url(event, format: :json)
