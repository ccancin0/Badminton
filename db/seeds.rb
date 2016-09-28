# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bond = Actor.create!(name: "James", gender: "male", homepage: "http://www.007.com/", age: 37)
stew = Actor.create!(name: "John", gender: "male", homepage: "https://www.youtube.com/", age: 24)
laime = Actor.create!(name: "Jaime", gender: "female", homepage: "https://www.google.com/", age: 34)
loben = Actor.create!(name: "Jonathan", gender: "non-binary category", homepage: "https://www.yahoo.com", age: 44)
robin = Actor.create!(name: "Jacky", gender: "female", homepage: "https://www.facebook.com/", age: 52)
