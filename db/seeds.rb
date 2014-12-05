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

# more fake people!
p1 = Person.create!(
	first_name: "Cristopher",
	last_name: "Jarvis",
	username: "Upositionots",
	email: "cjarv@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p1.save!

p2 = Person.create!(
	first_name: "Rebecca",
	last_name: "Cooper",
	username: "Mosorchat",
	email: "mosorchat@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p2.save!

p3 = Person.create!(
	first_name: "James",
	last_name: "Sawyer",
	username: "thecoolguy61",
	email: "coolguy@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p3.save!

p4 = Person.create!(
	first_name: "Kate",
	last_name: "Austen",
	username: "evil_lily",
	email: "kateausten@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p4.save!

p5 = Person.create!(
	first_name: "John",
	last_name: "Locke",
	username: "wildernesscatcher",
	email: "johnnyboy@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p5.save!

p6 = Person.create!(
	first_name: "Jack",
	last_name: "Shephard",
	username: "thedoctor",
	email: "doc@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p6.save!

p7 = Person.create!(
	first_name: "Desmond",
	last_name: "Hume",
	username: "welshexplorer",
	email: "welshguy@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p7.save!

p8 = Person.create!(
	first_name: "Hugo",
	last_name: "Reyes",
	username: "fatguy65",
	email: "everyonelovesme@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p8.save!

p9 = Person.create!(
	first_name: "Ben",
	last_name: "Chang",
	username: "ChangDynastea",
	email: "changben@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p9.save!

p10 = Person.create!(
	first_name: "Jeff",
	last_name: "Winger",
	username: "TheLastWord",
	email: "lawyered@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p10.save!

p11 = Person.create!(
	first_name: "Pierce",
	last_name: "Hawthorne",
	username: "OldGuyMastermind",
	email: "oldperson@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p11.save!

p12 = Person.create!(
	first_name: "Troy",
	last_name: "Barnes",
	username: "childish_gambino",
	email: "theycallmearapper@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p12.save!

p13 = Person.create!(
	first_name: "Britta",
	last_name: "Perry",
	username: "idopsychology",
	email: "psychmajor@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p13.save!

p14 = Person.create!(
	first_name: "Ron",
	last_name: "Swanson",
	username: "i_make_chairs",
	email: "hunter_wildernessman@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p14.save!

p15 = Person.create!(
	first_name: "Leslie",
	last_name: "Knope",
	username: "dontsayknope!",
	email: "knope@socialite.com",
	password: "password",
	password_confirmation: "password"
)
p15.save!

# Businesses
b1 = Business.create!(
	name: "Webster Hall Entertainment Corp.",
	number: "212-553-1600",
	email: "info@websterhall.com",
	address: "125 East 11th Street, New York, NY 10003"
)

as1 = Business.create!(
	name: "Luciano's",
	number: "111-111-1111",
	email: "luciano@socialite.com",
	address: "Metrotech Center" 
)


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
	num_attending: 2,
	person_id: Person.find(aart.id).id, # creator of the event
	privacy: "isFriends"
)
e1.save!

e2 = Events.create!(
	name: "Trivia Night",
	description: "Trivia night at the Foxy Hen. Bring your friends and engage in all night long Game of Thrones trivia. Winners get a pitcher of Stella. $2/beer all night.",
	venue_id: Venue.find(v2.id).id,
	starts: DateTime.new(2014, 11, 9, 20, 0),
	ends: DateTime.new(2014, 11, 9, 23, 0),
	num_attending: 1,
	business_created: true,
	business_id: Business.find(b1.id).id
)
e2.save!

e3 = Events.create!(
	name: "King Tut Exhibition Opening",
	description: "For the first time ever, come and see the opening of the King Tut exhibition at the Met. Here, you'll be able to see some of the elements that made up King Tut's brief but prolific life.",
	venue_id: Venue.find(v4.id).id,
	starts: DateTime.new(2014, 11, 9, 17, 30), 
	ends: DateTime.new(2014, 11, 9, 20, 0),
	num_attending: 0,
	business_created: true,
	business_id: Business.find(b1.id).id
)
e3.save!

e4 = Events.create!(
	name: "$1 Beer Night",
	description: "Drink yourself to death with us at $1 beer night at the Thirteenth Step. Have as many as you want or until you drop.",
	venue_id: Venue.find(v3.id).id,
	starts: DateTime.new(2014, 11, 9, 18, 0),
	ends: DateTime.new(2014, 11, 9, 23, 59),
	num_attending: 1,
	business_created: true,
	business_id: Business.find(b1.id).id
)
e4.save!

e5 = Events.create!(
	name: "Napa Valley Wine Tasting",
	description: "Vineyards of Napa Valley have come to New York. Try the classic pinot giorgio or the hundreds of other iconic wines at this fixed price wine tasting event.",
	venue_id: Venue.find(v4.id).id,
	starts: DateTime.new(2014, 11, 9, 11, 0),
	ends: DateTime.new(2014, 11, 9, 14, 0),
	num_attending: 0,
	business_created: true,
	business_id: Business.find(b1.id).id
)
e5.save!

e6 = Events.create!(
	name: "Brunch with the Crew",
	description: "You know who you are. Let's meet for brunch at Agavé and drown ourselves in mimosas.",
	venue_id: Venue.find(v5.id).id,
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0),
	num_attending: 0,
	business_created: true,
	business_id: Business.find(b1.id).id
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
	people_id: Person.find(achinty.id).id,
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