# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Film.create!(title: 'Lord of The Rings: The Fellowship of The Ring', genre: 'Fantasy', release_year: 2001, imdb_url: 'http://www.imdb.com/title/tt0120737/?ref_=nv_sr_1')
Film.create!(title: 'Lord of The Rings: The Two Towers', genre: 'Fantasy', release_year: 2002, imdb_url: 'http://www.imdb.com/title/tt0167261/?ref_=nv_sr_3')
Film.create!(title: 'Lord of The Rings: The Return of the King', genre: 'Fantasy', release_year: 2003, imdb_url: 'http://www.imdb.com/title/tt0167260/?ref_=nv_sr_2')
Film.create!(title: 'Tangled', genre: 'Adventure', release_year: 2010, imdb_url: 'http://www.imdb.com/title/tt0398286/?ref_=nv_sr_1')
Film.create!(title: 'Inception', genre: 'Science fiction', release_year: 2010, imdb_url: 'http://www.imdb.com/title/tt1375666/?ref_=nv_sr_1')
