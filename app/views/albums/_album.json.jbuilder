json.extract! album, :id, :name, :description, :since_date, :till_date, :author, :created_at, :updated_at
json.url album_url(album, format: :json)
