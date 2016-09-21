json.extract! film, :id, :title, :genre, :release_year, :imdb_url, :created_at, :updated_at
json.url film_url(film, format: :json)