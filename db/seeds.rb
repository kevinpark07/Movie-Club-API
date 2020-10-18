# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Club.destroy_all
Member.destroy_all
Movie.destroy_all
Review.destroy_all
Message.destroy_all

require 'faker'

user0 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
user1 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg")
user2 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://perfectczechwomen.com/wp-content/uploads/2019/04/New-Profile-20-500x536.jpg")
user3 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://i.insider.com/59b6b9b6f7f1f622008b47e9?width=600&format=jpeg&auto=webp")
user4 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://lh3.googleusercontent.com/proxy/7Lk6xvrPTfVFM8Kb9rysxtrKgFuRW_7sR8MCdVobiQjhTA61rtK5GRT8jAxCKtRp1vjBJSRE62feLrnJWwRYuy4Bu4vD5gCCBbhAshrTMNhDVD-3_IONP3LXbmBv_cMoHCteG4s")
user5 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://www4.pictures.zimbio.com/gi/39th+Annual+People+Choice+Awards+Portraits+lza8vaU_QsZx.jpg" )
user6 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://img-cdn.tid.al/o/6dc39fec4427c4f9f759c1f2c44137bec7366e4c.png" )
user7 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://lh3.googleusercontent.com/proxy/pAeLbKbOFAutI1n4wWr6yOhTZY_TPl3S6N3QaGfiDFRaP9GIDvWcNdFa_HlDkvh4DKZd7RWWz8oaWnrG-suZzlYL8bGKG5PWUnpLJIapJfZ8v8GslbBxzohfI9bryvu5M-w")
user8 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://vengreso.com/wp-content/uploads/2016/03/LinkedIn-Profile-Professional-Picture-Sample-Bernie-Borges.png")
user9 = User.create!(name: Faker::Name.unique.name, age: Faker::Number.between(from: 1, to: 100), email: Faker::Internet.email, profile_image: "https://www.bigredcloud.com/wp-content/uploads/4-tips-for-taking-professional-profile-pictures.jpg")

midsommar = Movie.create!(title: 'Midsommar', year: 2019, director: 'Ari Aster', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Midsommar_%282019_film_poster%29.png/220px-Midsommar_%282019_film_poster%29.png', description: "A couple travel to Sweden to visit their friend's rural hometown for its fabled midsummer festival, but what begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.")
it = Movie.create!(title: 'It', year: 2017, director: "Andrés Muschietti", image: "https://i.pinimg.com/originals/4e/8e/b7/4e8eb7ff2b0062083df9828a726dafe6.jpg", description: "Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town's children. Banding together over the course of one horrifying summer, the friends must overcome their own personal fears to battle the murderous, bloodthirsty clown known as Pennywise.")
us = Movie.create!(title: 'Us', year: 2019, director: "Jordan Peele", image: "https://m.media-amazon.com/images/M/MV5BODUyODM0NjYyNF5BMl5BanBnXkFtZTgwNjAwMDU5NjM@._V1_SY1000_SX640_AL_.jpg", description: "Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them.")
inception = Movie.create!(title: 'Inception', year: 2010, director: 'Christopher Nolan', image: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg', description: "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.")
the_dark_knight = Movie.create!(title: 'The Dark Knight', year: 2008, director: 'Christopher Nolan', image: 'https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201807/tdk_071818043506.jpg', description: "With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.")
interstellar = Movie.create!(title: 'Interstellar', year: 2014, director: 'Christopher Nolan', image: 'https://images-na.ssl-images-amazon.com/images/I/A1JVqNMI7UL._SL1500_.jpg', description: "In Earth's future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth's population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind's new home.")
fight_club = Movie.create!(title: 'Fight Club', year: 1999, director: 'David Fincher', image: 'https://akns-images.eonline.com/eol_images/Entire_Site/2019914/rs_685x1024-191014113838-634-fight-club-poster.cl.101419.jpg?fit=around|685:auto&output-quality=90&crop=685:auto;center,top', description: "A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler's attention.")
money_ball = Movie.create!(title: 'Money Ball', year: 2011, director: 'Bennett Miller', image: 'https://m.media-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_.jpg', description: "Billy Beane (Brad Pitt), general manager of the Oakland A's, one day has an epiphany: Baseball's conventional wisdom is all wrong. Faced with a tight budget, Beane must reinvent his team by outsmarting the richer ball clubs. Joining forces with Ivy League graduate Peter Brand (Jonah Hill), Beane prepares to challenge old-school traditions. He recruits bargain-bin players whom the scouts have labeled as flawed, but have game-winning potential. Based on the book by Michael Lewis.")
troy = Movie.create(title: 'Troy', year: 2004, director: 'Wolfgang Peterson', image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQf9CM5qT6EXTQY5YF87IKI_GBu0FVCe3IucLJvJJmGhsu7Ux33', description: "Based on Homer's Iliad, this epic portrays the battle between the ancient kingdoms of Troy and Sparta. While visiting Spartan King Menelaus (Brendan Gleeson), Trojan prince Paris (Orlando Bloom) falls for Menelaus' wife, Helen (Diane Kruger), and takes her back to Troy. Menelaus' brother, King Agamemnon (Brian Cox), having already defeated every army in Greece, uses his brother's fury as a pretext to declare war against Troy, the last kingdom preventing his control over the Aegean Sea.")
mad_max = Movie.create!(title: 'Mad Max: Fury Road', year: 2015, director: 'George Miller', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn1OTYGz2GDC1XjA9tirh_1Rd571yE5UFIYsmZp4nACMd7CCHM', description: "Years after the collapse of civilization, the tyrannical Immortan Joe enslaves apocalypse survivors inside the desert fortress the Citadel. When the warrior Imperator Furiosa (Charlize Theron) leads the despot's five wives in a daring escape, she forges an alliance with Max Rockatansky (Tom Hardy), a loner and former captive. Fortified in the massive, armored truck the War Rig, they try to outrun the ruthless warlord and his henchmen in a deadly high-speed chase through the Wasteland.")
kingsman = Movie.create!(title: 'Kingsman: The Secret Service', year: 2014, director: 'Matthew Vaughn', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaV_8e8HbPXUxNbEO7VxuJMF6g8K9KpZYUFbNkAllh8NMAcbL0', description: "Gary Eggsy Unwin (Taron Egerton), whose late father secretly worked for a spy organization, lives in a South London housing estate and seems headed for a life behind bars. However, dapper agent Harry Hart (Colin Firth) recognizes potential in the youth and recruits him to be a trainee in the secret service. Meanwhile, villainous Richmond Valentine (Samuel L. Jackson) launches a diabolical plan to solve the problem of climate change via a worldwide killing spree.")
john_wick = Movie.create!(title: 'John Wick', year: 2014, director: 'Chad Stahelski', image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ8VG9sviAteOyJC-CULm4U-WFIiGn8QrDSXDBiF7E-amB99kFX', description: "An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.")
avengers = Movie.create!(title: 'The Avengers', year: 2012, director: 'Joss Whedon', image: 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', description: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.")
doctor_strange = Movie.create!(title: 'Doctor Strange', year: 2016, director: 'Scott Derrickson', image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSY36FiQD0jYGpEeLmi4rJrUjX2OwXVqB6Nktco3M_KvdIQpARF', description: "Dr. Stephen Strange's (Benedict Cumberbatch) life changes after a car accident robs him of the use of his hands. When traditional medicine fails him, he looks for healing, and hope, in a mysterious enclave. He quickly learns that the enclave is at the front line of a battle against unseen dark forces bent on destroying reality. Before long, Strange is forced to choose between his life of fortune and status or leave it all behind to defend the world as the most powerful sorcerer in existence.")
black_panther = Movie.create!(title: 'Black Panther', year: 2016, director: 'Ryan Coogler', image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRKSycOdlnIhxqT7O_n7nbBFpDV__d1IGzEB6QGG-O7zOVj57y1', description: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.")


horror_club = Club.create!(name: "Horror Club", meeting_time: 'October 22, 2020', description: Faker::Lorem.paragraphs(number: 1), image: 'https://images.squarespace-cdn.com/content/5aa2aa305417fc8e6adca1a1/1528215995115-G4FGVUU3EFBJ62JVV6IK/IMG_3023+%282%29.jpg?format=1500w&content-type=image%2Fjpeg')
nolan_club = Club.create!(name: "Christopher Nolan Club", meeting_time: 'December 25, 2020', description: Faker::Lorem.paragraphs(number: 1), image: 'https://upload.wikimedia.org/wikipedia/commons/9/95/Christopher_Nolan_Cannes_2018.jpg')
pitt_club = Club.create!(name: "Brad Pitt Club", meeting_time: 'October 31, 2020', description: Faker::Lorem.paragraphs(number: 1), image: 'https://www.biography.com/.image/c_fit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_620/MTY3MDUxMjI0MjM4MDA3OTgx/brad-pitt-attends-the-premiere-of-20th-century-foxs.jpg')
action_club = Club.create!(name: "Action Club", meeting_time: 'November 1, 2020', description: Faker::Lorem.paragraphs(number: 1), image: 'https://cdn10.bigcommerce.com/s-pn1ttq/products/1793/images/3451/Utlimate_Action_Movie_Club_sm__89445.1512077306.380.380.jpg?c=2')
marvel_club = Club.create!(name: "Avengers Club ", meeting_time: 'December 11, 2020', description: Faker::Lorem.paragraphs(number: 1), image: 'https://www.slashfilm.com/wp/wp-content/images/marvel-intro-e1556625768997.jpg')

horror_review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: us, club: horror_club)
horror_review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: midsommar, club: horror_club)
horror_review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: it, club: horror_club)
nolan_review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: the_dark_knight, club: nolan_club)
nolan_review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: inception, club: nolan_club)
nolan_review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: interstellar, club: nolan_club)
pitt_review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: fight_club, club: pitt_club)
pitt_review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: money_ball, club: pitt_club)
pitt_review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: troy, club: pitt_club)
action_review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: mad_max, club: action_club )
action_review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: kingsman, club: action_club)
action_review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: john_wick, club: action_club)
marvel_review1 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: avengers, club: marvel_club)
marvel_review2 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: doctor_strange, club: marvel_club)
marvel_review3 = Review.create!(description: Faker::Lorem.paragraphs(number: 1), rating: Faker::Number.between(from: 1, to: 10), movie: black_panther, club: marvel_club)

member1 = Member.create!(user: user0, club: horror_club)
member2 = Member.create!(user: user0, club: nolan_club)
member3 = Member.create!(user: user1, club: pitt_club)
member4 = Member.create!(user: user1, club: action_club)
member5 = Member.create!(user: user2, club: marvel_club)
member6 = Member.create!(user: user2, club: horror_club)
member7 = Member.create!(user: user3, club: marvel_club)
member8 = Member.create!(user: user4, club: action_club)
member9 = Member.create!(user: user5, club: action_club)
member10 = Member.create!(user: user6, club: horror_club)
member11 = Member.create!(user: user7, club: nolan_club)
member12 = Member.create!(user: user8, club: marvel_club)
member13 = Member.create!(user: user8, club: horror_club)
member14 = Member.create!(user: user9, club: nolan_club)
member15 = Member.create!(user: user9, club: pitt_club)
member16 = Member.create!(user: user9, club: nolan_club)



message1 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user0, club: horror_club)
message2 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user2, club: horror_club)
message3 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user3, club: nolan_club)
message4 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user4, club: nolan_club)
message5 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user5, club: pitt_club)
message6 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user6, club: pitt_club)
message7 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user7, club: action_club)
message8 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user8, club: action_club)
message9 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user9, club: marvel_club)
message10 = Message.create!(content: Faker::Lorem.words(number: 6..10), user: user1, club: marvel_club)




