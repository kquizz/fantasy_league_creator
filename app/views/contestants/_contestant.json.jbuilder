json.extract! contestant, :id, :name, :birthdate, :image, :arrival_date, :details, :created_at, :updated_at
json.url contestant_url(contestant, format: :json)
