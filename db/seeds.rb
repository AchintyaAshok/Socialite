# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

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
	  name: 'Elite Event: Hot LIC Nights at Blend On The Water',
      yelp_Id: 'elite-event-hot-lic-nights-at-blend-on-the-water-long-island-city',
      lat: 40.7446517944336,
      long: -73.9581069946289,
      address: '4540 Center Blvd, Hunters Point, Long Island City, NY 11109',
      phone: '',
)
v5.save!

e1 = Events.create!(
	name: "Josh's Halloween Apartment Party",
	description: "Come join me at my apartment party! Feel free to bring along anyone.",
	venue_id: Venue.find(v1.id).id,
	starts: DateTime.new(2014, 11, 9, 22, 30), #10:30pm at night
	ends: DateTime.new(2014, 11, 10, 3, 0),
	num_attending: 1
)
e1.save!

e2 = Events.create!(
	name: "Trivia Night",
	description: "Trivia night at the Foxy Hen. Bring your friends and engage in all night long Game of Thrones trivia. Winners get a pitcher of Stella. $2/beer all night.",
	venue_id: Venue.find(v2.id).id,
	starts: DateTime.new(2014, 11, 9, 20, 0),
	ends: DateTime.new(2014, 11, 9, 23, 0),
	num_attending: 1
)
e2.save!

e3 = Events.create!(
	name: "King Tut Exhibition Opening",
	description: "For the first time ever, come and see the opening of the King Tut exhibition at the Met. Here, you'll be able to see some of the elements that made up King Tut's brief but prolific life.",
	venue_id: Venue.find(v4.id).id,
	starts: DateTime.new(2014, 11, 9, 17, 30), 
	ends: DateTime.new(2014, 11, 9, 20, 0),
	num_attending: 0
)
e3.save!

e4 = Events.create!(
	name: "$1 Beer Night",
	description: "Drink yourself to death with us at $1 beer night at the Thirteenth Step. Have as many as you want or until you drop.",
	venue_id: Venue.find(v3.id).id,
	starts: DateTime.new(2014, 11, 9, 18, 0),
	ends: DateTime.new(2014, 11, 9, 23, 59),
	num_attending: 1
)
e4.save!

e5 = Events.create!(
	name: "Napa Valley Wine Tasting",
	description: "Vineyards of Napa Valley have come to New York. Try the classic pinot giorgio or the hundreds of other iconic wines at this fixed price wine tasting event.",
	venue_id: Venue.find(v4.id).id,
	starts: DateTime.new(2014, 11, 9, 11, 0),
	ends: DateTime.new(2014, 11, 9, 14, 0),
	num_attending: 0
)
e5.save!

e6 = Events.create!(
	name: "Brunch with the Crew",
	description: "You know who you are. Let's meet for brunch at Agavé and drown ourselves in mimosas.",
	venue_id: Venue.find(v5.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0
)
e6.save!

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
	events_id: Events.find(e6.id).id,
	following: true,
	going: false
)

# Businesses
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