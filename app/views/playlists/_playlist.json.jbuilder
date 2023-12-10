json.extract! playlist, :id, :Song, :Singer, :Album, :year, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
