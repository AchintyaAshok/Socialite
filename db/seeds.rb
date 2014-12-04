# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#e1 = Events.create!(
#	name: "Josh's Halloween Apartment Party",
#	description: "Come join me at my apartment party! Feel free to bring along anyone.",
#	venue: "Josh's Apartment in Alphabet City",
#	starts: DateTime.new(2014, 11, 9, 22, 30), #10:30pm at night
#	ends: DateTime.new(2014, 11, 10, 3, 0)
#)
#e1.save!

#e2 = Events.create!(
#	name: "Trivia Night",
#	description: "Trivia night at the Foxy Hen. Bring your friends and engage in all night long Game of Thrones trivia. Winners get a pitcher of Stella. $2/beer all night.",
#	venue: "The Foxy Hen, 112 Bleecker Street, New York",
#	starts: DateTime.new(2014, 11, 9, 20, 0),
#	ends: DateTime.new(2014, 11, 9, 23, 0)
#)
#e2.save!

#e3 = Events.create!(
#	name: "King Tut Exhibition Opening",
#	description: "For the first time ever, come and see the opening of the King Tut exhibition at the Met. Here, you'll be able to see some of the elements that made up King Tut's brief but prolific life.",
#	venue: "The Metropolitan Museum of Art",
#	starts: DateTime.new(2014, 11, 9, 17, 30), 
#	ends: DateTime.new(2014, 11, 9, 20, 0)
#)
#e3.save!

#e4 = Events.create!(
#	name: "$1 Beer Night",
#	description: "Drink yourself to death with us at $1 beer night at the Thirteenth Step. Have as many as you want or until you drop.",
#	venue: "The Thirteenth Step, 556 2nd Avenue, New York",
#	starts: DateTime.new(2014, 11, 9, 18, 0),
#	ends: DateTime.new(2014, 11, 9, 23, 59)
#)
#e4.save!

#e5 = Events.create!(
#	name: "Napa Valley Wine Tasting",
#	description: "Vineyards of Napa Valley have come to New York. Try the classic pinot giorgio or the hundreds of other iconic wines at this fixed price wine tasting event.",
#	venue: "Amelié Wine Bar, 100 1st Avenue, New York",
#	starts: DateTime.new(2014, 11, 9, 11, 0),
#	ends: DateTime.new(2014, 11, 9, 14, 0)
#)
#e5.save!

#e6 = Events.create!(
#	name: "Brunch with the Crew",
#	description: "You know who you are. Let's meet for brunch at Agavé and drown ourselves in mimosas.",
#	venue: "Agavé New York, 333 6th Avenue, New York",
#	starts: DateTime.new(2014, 11, 9, 10, 30), 
#	ends: DateTime.new(2014, 11, 9, 13, 0)
#)
#e6.save!

# # Creating some Dummy Users
# aarti = Users.create!(
# 	first_name: "Aarti",
# 	last_name: "Patel",
# 	username: "aartiparty",
# 	email: "aartipaarty@socialite.com"
# )
# aarti.save!

# achintya = Users.create!(
# 	first_name: "Achintya",
# 	last_name: "Ashok",
# 	username: "KingChintz",
# 	email: "kingchintz@sociliate.com"
# )
# achintya.save!

# abhishek = Users.create!(
# 	first_name: "Abhishek",
# 	last_name: "Sharma",
# 	username: "Abhishek",
# 	email: "abhishek@socialite.com"
# )
# abhishek.save!

# tanay = Users.create!(
# 	first_name: "Tanay",
# 	last_name: "Ved",
# 	username: "tanuved",
# 	email: "tanuved@socialite.com"
# )
# tanay.save!

# vincent = Users.create!(
# 	first_name: "Vincent",
# 	last_name: "Fong",
# 	username: "vincenzo",
# 	email: "vincenzo@socialite.com"
# )
# vincent.save!


# Creating some Dummy Users
aart = Person.create!(
	first_name: "Aarti",
	last_name: "Patel",
	username: "aartiparty",
	email: "aartipaarty@socialite.com",
	password: "aartipatel",
	password_confirmation: "aartipatel"
)
aart.save!

achinty = Person.create!(
	first_name: "Achintya",
	last_name: "Ashok",
	username: "KingChintz",
	email: "kingchintz@socialite.com",
	password: "achintyaashok",
	password_confirmation: "achintyaashok"
)
achinty.save!

abhishe = Person.create!(
	first_name: "Abhishek",
	last_name: "Sharma",
	username: "Abhishek",
	email: "abhishek@socialite.com",
	password: "abhisheksharma",
	password_confirmation: "abhisheksharma"
)
abhishe.save!

tana = Person.create!(
	first_name: "Tanay",
	last_name: "Ved",
	username: "tanuved",
	email: "tanuved@socialite.com",
	password: "tanayved",
	password_confirmation: "tanayved"
)
tana.save!

vincen = Person.create!(
	first_name: "Vincent",
	last_name: "Fong",
	username: "vincenzo",
	email: "vincenzo@socialite.com",
	password: "vincentfong",
	password_confirmation: "vincentfong"
)
vincen.save!

# Creating some venues (real data from yelp)
v1 = Venue.create!(
	  name: 'Prospect Park Brooklyn',
      yelp_Id: 'prospect-park-brooklyn',
      lat: 40.6669006,
      long: -73.9747543,
      address: '95 Prospect Park W, Brooklyn, NY 11215',
      phone: '+1-718-965-8951',
)
v1.save!

v2 = Venue.create!(
	  name: 'Brooklyn Bridge Park',
      yelp_Id: 'brooklyn-bridge-park-brooklyn',
      lat: 40.7016262778116,
      long: -73.9972114562988,
      address: 'Pier 1, Brooklyn, NY 11201',
      phone: '+1-718-222-9939',
)
v2.save!

v3 = Venue.create!(
	  name: 'Brooklyn Heights Promenade',
      yelp_Id: 'brooklyn-heights-promenade-brooklyn',
      lat: 40.6994286,
      long: -73.9957886,
      address: 'Columbia Heights, Brooklyn Heights, Brooklyn, NY 11201',
      phone: '',
)
v3.save!

v4 = Venue.create!(
	  name: 'Brooklyn Bridge',
      yelp_Id: 'brooklyn-bridge-brooklyn',
      lat: 40.704847145301,
      long: -73.9955377578735,
      address: 'Brooklyn, NY 11201',
      phone: '',
)
v4.save!

v5 = Venue.create!(
	  name: 'Rockefeller Center',
      yelp_Id: 'rockefeller-center-new-york',
      lat: 40.758716632613,
      long: -73.9785325527191,
      address: '30 Rockefeller Plz, Midtown West, New York, NY 10012',
      phone: '+1-212-632-3975',
)
v5.save!

v6 = Venue.create!(
	name: "Phebe's",
	yelp_Id: 'phebes-new-york',
    lat: 40.7268219,
  	long: -73.9912796,
  	address: '359 Bowery St, East Village, New York, NY 10003',
  	phone: '+1-212-358-1902',
)
v6.save!

v7 = Venue.create!(
	name: "Petite Abeille",
	yelp_Id: 'petite-abeille-new-york-3',
    lat: 40.738636,
  	long: -73.994514,
  	address: '44 W 17th St, Flatiron, New York, NY 10011',
  	phone: '+1-212-727-2989',
)
v7.save!

v8 = Venue.create!(
	name: "Metropolitan Museum of Art",
	yelp_Id: 'metropolitan-museum-of-art-new-york',
    lat: 40.7789658613927,
  	long: -73.9626964185218,
  	address: '1000 5th Ave, New York, NY 10028',
  	phone: '+1-212-535-7710',
)
v8.save!

v9 = Venue.create!(
	name: "Webster Hall",
	yelp_Id: 'webster-hall-new-york',
    lat: 40.7316609,
  	long: -73.9891926,
  	address: '125 E 11th St, East Village, New York, NY 10003',
  	phone: '+1-212-353-1600',
)
v9.save!

v10 = Venue.create!(
	name: "Barnes & Noble",
	yelp_Id: 'barnes-and-noble-new-york-3',
    lat: 40.737148,
  	long: -73.989403,
  	address: 'Union Square, 33 E 17th St, Flatiron, New York, NY 10003',
  	phone: '+1-212-253-0810',
)
v10.save!

v11 = Venue.create!(
	name: "Bathtub Gin",
	yelp_Id: 'bathtub-gin-new-york',
    lat: 40.7436723627234,
  	long: -74.0033376216888,
  	address: '132 9th Ave, Chelsea, New York, NY 10011',
  	phone: '+1-646-559-1671',
)
v11.save!

v12 = Venue.create!(
	name: "230 Fifth",
	yelp_Id: '230-fifth-new-york',
    lat: 40.743988,
  	long: -73.9879837,
  	address: '230 5th Ave, Flatiron, New York, NY 10001',
  	phone: '+1-212-725-4300',
)
v12.save!

v13 = Venue.create!(
	name: "Picnic Garden",
	yelp_Id: 'picnic-garden-flushing',
    lat: 40.7650292743955,
  	long: -73.8176979124546,
  	address: '14742 Northern Blvd, Flushing, Flushing, NY 11354',
  	phone: '+1-718-358-5959',
)
v13.save!

e1 = Events.create!(
	name: "Walk the Brooklyn Bridge",
	description: "Come walk the Brooklyn Bridge with us for a good cause!",
	venue_id: Venue.find(v4.id).id,
	starts: DateTime.new(2014, 11, 9, 22, 30), #10:30pm at night
	ends: DateTime.new(2014, 11, 10, 3, 0),
	num_attending: 3
)
e1.save!

e2 = Events.create!(
	name: "Ultimate Frsibee",
	description: "Get your frisbee ready! Ultimate Frisbee time!!!",
	venue_id: Venue.find(v1.id).id,
	starts: DateTime.new(2014, 11, 9, 20, 0),
	ends: DateTime.new(2014, 11, 9, 23, 0),
	num_attending: 1
)
e2.save!

e3 = Events.create!(
	name: "Ice Skating with the folks",
	description: "What's more fun than ice skating with the family? Nothing. So, grab your skates and come on down!",
	venue_id: Venue.find(v5.id).id,
	starts: DateTime.new(2014, 11, 9, 17, 30), 
	ends: DateTime.new(2014, 11, 9, 20, 0),
	num_attending: 0
)
e3.save!

e4 = Events.create!(
	name: "$1 Beer Night",
	description: "Drink yourself to death with us at $1 beer night at Phebes. Have as many as you want or until you drop.",
	venue_id: Venue.find(v6.id).id,
	starts: DateTime.new(2014, 11, 9, 18, 0),
	ends: DateTime.new(2014, 11, 9, 23, 59),
	num_attending: 1
)
e4.save!

e5 = Events.create!(
	name: "College kids trying to be fancy",
	description: "Lets hit the Met and pretend we know what is art. Put on those suits and dresses.",
	venue_id: Venue.find(v8.id).id,
	starts: DateTime.new(2014, 11, 9, 11, 0),
	ends: DateTime.new(2014, 11, 9, 14, 0),
	num_attending: 0
)
e5.save!

e6 = Events.create!(
	name: "Brunch with the Crew",
	description: "You know who you are. Let's meet for brunch at Petite Abeille and drown ourselves in mimosas.",
	venue_id: Venue.find(v7.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0
)
e6.save!

e7 = Events.create!(
	name: "Webster",
	description: "Webster? No, not the dictionary. WEBSTER HALL. Rave it up. Twerk it.",
	venue_id: Venue.find(v9.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0
)
e7.save!

e8 = Events.create!(
	name: "Eat till you can't eat anymore",
	description: "Definitely not for the faint of heart. So much meat! PLUS its a buffet",
	venue_id: Venue.find(v13.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0
)
e8.save!

# User Events -- Events that users have chosen to follow or join:
PersonEvent.create(
	people_id: Person.find(aart.id).id,
	events_id: Events.find(e1.id).id,
	following: true,
	going: true
)
PersonEvent.create(
	people_id: Person.find(aart.id).id,
	events_id: Events.find(e2.id).id,
	following: true,
	going: true
)
PersonEvent.create(
	people_id: Person.find(achinty.id).id,
	events_id: Events.find(e3.id).id,
	following: true,
	going: false
)
PersonEvent.create(
	people_id: Person.find(achinty.id).id,
	events_id: Events.find(e1.id).id,
	following: true,
	going: true
)
PersonEvent.create(
	people_id: Person.find(achinty.id).id,
	events_id: Events.find(e4.id).id,
	following: true,
	going: true
)
PersonEvent.create(
	people_id: Person.find(abhishe.id).id,
	events_id: Events.find(e5.id).id,
	following: true,
	going: false
)
PersonEvent.create(
	people_id: Person.find(abhishe.id).id,
	events_id: Events.find(e1.id).id,
	following: true,
	going: true
)
PersonEvent.create(
	people_id: Person.find(abhishe.id).id,
	events_id: Events.find(e6.id).id,
	following: true,
	going: false
)

Friend.create(
	person_id: Person.find(aart.id).id,
	friend_id: Person.find(achinty.id).id
)

Friend.create(
	person_id: Person.find(aart.id).id,
	friend_id: Person.find(abhishe.id).id
)
# # User Events -- Events that users have chosen to follow or join:
# UserEvents.create(
# 	users_id: Users.find(aarti.id).id,
# 	events_id: Events.find(e1.id).id,
# 	following: true,
# 	going: true
# )
# UserEvents.create(
# 	users_id: Users.find(aarti.id).id,
# 	events_id: Events.find(e2.id).id,
# 	following: true,
# 	going: true
# )
# UserEvents.create(
# 	users_id: Users.find(achintya.id).id,
# 	events_id: Events.find(e3.id).id,
# 	following: true,
# 	going: false
# )
# UserEvents.create(
# 	users_id: Users.find(achintya.id).id,
# 	events_id: Events.find(e4.id).id,
# 	following: true,
# 	going: true
# )
# UserEvents.create(
# 	users_id: Users.find(abhishek.id).id,
# 	events_id: Events.find(e5.id).id,
# 	following: true,
# 	going: false
# )
# UserEvents.create(
# 	users_id: Users.find(abhishek.id).id,
# 	events_id: Events.find(e6.id).id,
# 	following: true,
# 	going: false
# )


#Abhishek Businesses

as1 = Business.create!(
	name: "Luciano's",
	number: "111-111-1111",
	email: "luciano@socialite.com",
	address: "Metrotech Center" 
)

as2 = Events.create!(
	name: "Luciano Event",
	description: "Test Luciano Event",
	venue_id: Venue.find(v5.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0
)

BusinessEvent.create!(
	businesses_id: Business.find(as1.id).id,
	events_id: Events.find(as2.id).id
)