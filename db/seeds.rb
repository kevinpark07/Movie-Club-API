# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Club.destroy_all
Movie.destroy_all
Review.destroy_all
Messages.destroy_all

require 'faker'

user1 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user2 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user3 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user4 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user5 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user6 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user7 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user8 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))
user9 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100))

the_dark_knight_club = Club.create!(name: "The Dark Knight Club")
midsommar_club = Club.create!(name: "Midsommar Club")
mad_max_club = Club.create!(name: "Mad Max: Fury Road Club")
parasite_club = Club.create!(name: "Parasite Club")
the_social_network_club = Club.create!(name: "The Social Network Club")
inception_club = Club.create!(name: "Inception Club")
the_irishman_club = Club.create!(name: "The Irishman Club")
the_big_short_club = Club.create!(name: "The Big Short Club")
joker_club = Club.create!(name: "Joker Club")

review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: the_dark_knight, club: the_dark_knight_club)
review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: midsommar, club: midsommar_club)
review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: mad_max, club: mad_max_club)
review4 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: parasite, club: parasite_club)
review5 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: the_social_network, club: the_social_network_club)
review6 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: inception, club: inception_club)
review7 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: the_irishman, club: the_irishman_club)
review8 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: the_big_short, club: the_big_short_club)
review9 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: joker, club: joker_club)

the_dark_knight = Movie.create!(title: 'The Dark Knight', year: 2008, director: 'Christopher Nolan', image: 'https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201807/tdk_071818043506.jpg' )
midsommar = Movie.create!(title: 'Midsommar', year: 2019, director: 'Ari Aster', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Midsommar_%282019_film_poster%29.png/220px-Midsommar_%282019_film_poster%29.png')
mad_max = Movie.create!(title: 'Mad Max: Fury Road', year: 2015, director: 'George Miller', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn1OTYGz2GDC1XjA9tirh_1Rd571yE5UFIYsmZp4nACMd7CCHM')
parasite = Movie.create!(title: 'Parasite', year: 2019, director: 'Bong Joon Ho', image: 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UY1200_CR90,0,630,1200_AL_.jpg')
the_social_network = Movie.create!(title: 'The Social Network', year: 2010, director: 'David Fincher', image: 'https://static.metacritic.com/images/products/movies/9/aa5515688c769b5ffb92d2b07e671c2a.jpg')
inception = Movie.create!(title: 'Inception', year: 2010, director: 'Christopher Nolan', image: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg')
the_irishman = Movie.create!(title: 'The Irishman', year: 2019, director: 'Martin Scorsese', image: 'https://upload.wikimedia.org/wikipedia/en/8/80/The_Irishman_poster.jpg')
the_big_short = Movie.create!(title: 'The Big Short', year: 2015, director: 'Adam McKay', image: 'https://m.media-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg')
joker = Movie.create!(title: 'Joker', year: 2019, director: 'Todd Phillips', image: 'https://pbs.twimg.com/media/EDEsh0gU4AUTO3P?format=jpg&name=900x900')

message1 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user1, club: the_dark_knight_club)
message2 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user2, club: midsommar_club)
message3 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user3, club: mad_max_club)
message4 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user4, club: parasite_club)
message5 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user5, club: the_social_network_club)
message6 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user6, club: inception_club)
message7 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user7, club: the_irishman_club)
message8 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user8, club: the_big_short_club)
message9 = Messages.create!(content: Faker::Lorem.paragraphs(number: 1), user: user9, club: joker_club)


