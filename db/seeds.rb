# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

james = Actor.create!(name: "James", gender: "male", homepage: "http://www.007.com/", age: 37)
john = Actor.create!(name: "John", gender: "male", homepage: "https://www.youtube.com/", age: 24)
jaime = Actor.create!(name: "Jaime", gender: "female", homepage: "https://www.google.com/", age: 34)
jonathan = Actor.create!(name: "Jonathan", gender: "non-binary", homepage: "https://www.yahoo.com", age: 44)
jacky = Actor.create!(name: "Jacky", gender: "female", homepage: "https://www.facebook.com/", age: 52)

james_talent_agent = Talent_Agent.create!(first_name: "Ari", last_name: "Emanuel", dob: 2016-10-02, pitch: high)
john_talent_agent = Talent_Agent.create!(first_name: "Lew", last_name: "Wasserman", dob: 1994-10-02, pitch: low)
jaime_talent_agent = Talent_Agent.create!(first_name: "Freddie", last_name: "Fields", dob: 2004-10-02, pitch: medium)
jonathan_talent_agent = Talent_Agent.create!(first_name: "Sue", last_name: "Mengers", dob: 1990-10-02, pitch: low)
jacky_talent_agent = Talent_Agent.create!(first_name: "Orions", last_name: "Barnes", dob: 2000-10-02, pitch: high)

lotr1 = Film.create!(title: 'Lord of The Rings: The Fellowship of The Ring', genre: 'Fantasy', release_year: 2001, imdb_url: 'http://www.imdb.com/title/tt0120737/?ref_=nv_sr_1')
lotr2 = Film.create!(title: 'Lord of The Rings: The Two Towers', genre: 'Fantasy', release_year: 2002, imdb_url: 'http://www.imdb.com/title/tt0167261/?ref_=nv_sr_3')
lotr3 = Film.create!(title: 'Lord of The Rings: The Return of the King', genre: 'Fantasy', release_year: 2003, imdb_url: 'http://www.imdb.com/title/tt0167260/?ref_=nv_sr_2')
tangled = Film.create!(title: 'Tangled', genre: 'Adventure', release_year: 2010, imdb_url: 'http://www.imdb.com/title/tt0398286/?ref_=nv_sr_1')
hero = Film.create!(title: 'Big Hero 6', genre: 'Adventure', release_year: 2014, imdb_url: 'http://www.imdb.com/title/tt2245084/?ref_=nm_flmg_prd_3')
inception = Film.create!(title: 'Inception', genre: 'Science fiction', release_year: 2010, imdb_url: 'http://www.imdb.com/title/tt1375666/?ref_=nv_sr_1')
batman = Film.create!(title: 'The Dark Knight', genre: 'Action', release_year: 2008, imdb_url: 'http://www.imdb.com/title/tt0468569/?ref_=nm_flmg_prd_9')

peter = Producer.create!(name: 'Peter Jackson', greeting: 'Hello, I was born as an only child in a small coast-side town in New Zealand in 1961.',
mission_statement: 'To make three films back-to-back-to-back.', activation_date: '1987/6/22')
roy = Producer.create!(name: 'Roy Conli', greeting: 'Hello, I like animation', mission_statement: 'For the Kids',
  activation_date: '1996/3/18')
chris = Producer.create!(name: 'Christopher Nolan', greeting: 'Hello, I was born on July 30, 1970 in London, England', 
mission_statement: 'To blow your mind', activation_date: '1998/4/27')

r1 = Review.create!(title: 'Hobbiton', subtitle: 'New Zealand reCreated', stars: 5.0, 
body: 'Peter Jackson builds fictional Middle-Earth in New Zealand...')
r2 = Review.create!(title: 'J.R.R Tolkien', subtitle: 'Book to Movie', stars: 3.0,
   body: 'Franz Walsh does a good job writing the screenplay...')
r3 = Review.create!(title: 'Animatioin Era', subtitle: 'More Animation than Ever', stars: 4.5, 
       body: 'The animation in Tangled is bigger and better...')
r4 = Review.create!(title: 'Repunzel', subtitle: 'Animated Story as Old as Time', stars: 3.5,
body: 'The age-old story takes things to a new level...')
r5 = Review.create!(title: 'Nolan Strikes Again', subtitle: 'Best Batman Yet', stars: 4.5,
body: 'Christopher Nolan is a mastermind in entertainment...')
r6 = Review.create!(title: 'Tragedy Behind the Scences', subtitle: 'The Joker No Longer', stars: 2.0,
body: 'When an actor has to play a psychotic role it leads to problems...' ) 

peter.films << [lotr1, lotr2, lotr3]
peter.save!
roy.films << [tangled, hero]
roy.save!
chris.films << [inception, batman]
chris.save!
lotr2.critiques << [r1, r2]
lotr2.save!
tangled.critiques << [r3, r4]
tangled.save!
batman.critiques << [r5, r6]
batman.save!

james.talent_agent = james_agent
james.films << [lotr1, lotr2]
james.save!
john.talent_agent = john_agent
john.films << hero
john.save!
jaime.talent_agent = jaime_agent
jaime.films << [lotr3, tangled]
jaime.save!
jonathan.talent_agent = jonathan_agent
jonathan.films << batman
jonathan.save!
jacky.talent_agent = jacky_agent
jacky.films << inception
jacky.save!



Reviewer.create!(handle: 'Andrew Hayes', phone: '9013346798', status: 'top', years_active: '15')
Reviewer.create!(handle: 'Andrew Duncan', phone: '9013346797', status: 'top', years_active: '16')
Reviewer.create!(handle: 'Andrew Garfield', phone: '9013346796', status: 'top', years_active: '17')
Reviewer.create!(handle: 'Michael Scarn', phone: '9013346795', status: 'top', years_active: '18')
Reviewer.create!(handle: 'Ron Swanson', phone: '9013346794', status: 'top', years_active: '19')
