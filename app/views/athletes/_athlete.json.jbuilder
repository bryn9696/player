json.extract! athlete, :id, :first_name, :last_name, :age, :week_1, :week_2, :week_3, :week_4, :week_5, :week_6, :progress, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
