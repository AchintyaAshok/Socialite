# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Events.create!(
	name: "Josh's Halloween Apartment Party",
	description: "Come join me at my apartment party! Feel free to bring along anyone.",
	venue: "Josh's Apartment in Alphabet City",
	starts: DateTime.new(2014, 11, 9, 22, 30), #10:30pm at night
	ends: DateTime.new(2014, 11, 10, 3, 0)
)
e1.save!

e2 = Events.create!(
	name: "Trivia Night",
	description: "Trivia night at the Foxy Hen. Bring your friends and engage in all night long Game of Thrones trivia. Winners get a pitcher of Stella. $2/beer all night.",
	venue: "The Foxy Hen, 112 Bleecker Street, New York",
	starts: DateTime.new(2014, 11, 9, 20, 0),
	ends: DateTime.new(2014, 11, 9, 23, 0)
)
e2.save!

e3 = Events.create!(
	name: "King Tut Exhibition Opening",
	description: "For the first time ever, come and see the opening of the King Tut exhibition at the Met. Here, you'll be able to see some of the elements that made up King Tut's brief but prolific life.",
	venue: "The Metropolitan Museum of Art",
	starts: DateTime.new(2014, 11, 9, 17, 30), 
	ends: DateTime.new(2014, 11, 9, 20, 0)
)
e3.save!

e4 = Events.create!(
	name: "$1 Beer Night",
	description: "Drink yourself to death with us at $1 beer night at the Thirteenth Step. Have as many as you want or until you drop.",
	venue: "The Thirteenth Step, 556 2nd Avenue, New York",
	starts: DateTime.new(2014, 11, 9, 18, 0),
	ends: DateTime.new(2014, 11, 9, 23, 59)
)
e4.save!

e5 = Events.create!(
	name: "Napa Valley Wine Tasting",
	description: "Vineyards of Napa Valley have come to New York. Try the classic pinot giorgio or the hundreds of other iconic wines at this fixed price wine tasting event.",
	venue: "Amelié Wine Bar, 100 1st Avenue, New York",
	starts: DateTime.new(2014, 11, 9, 11, 0),
	ends: DateTime.new(2014, 11, 9, 14, 0)
)
e5.save!

e6 = Events.create!(
	name: "Brunch with the Crew",
	description: "You know who you are. Let's meet for brunch at Agavé and drown ourselves in mimosas.",
	venue: "Agavé New York, 333 6th Avenue, New York",
	starts: DateTime.new(2014, 11, 9, 10, 30), 
	ends: DateTime.new(2014, 11, 9, 13, 0)
)
e6.save!

# Creating some Dummy Users
aarti = Users.create!(
	first_name: "Aarti",
	last_name: "Patel",
	username: "aartipaty",
	email: "aartipaarty@socialite.com"
)
aarti.save!

achintya = Users.create!(
	first_name: "Achintya",
	last_name: "Ashok",
	username: "KingChintz",
	email: "kingchintz@sociliate.com"
)
achintya.save!

abhishek = Users.create!(
	first_name: "Abhishek",
	last_name: "Sharma",
	username: "Abhishek",
	email: "abhishek@socialite.com"
)
abhishek.save!

tanay = Users.create!(
	first_name: "Tanay",
	last_name: "Ved",
	username: "tanuved",
	email: "tanuved@socialite.com"
)
tanay.save!

vincent = Users.create!(
	first_name: "Vincent",
	last_name: "Fong",
	username: "vincenzo",
	email: "vincenzo@socialite.com"
)
vincent.save!

# User Events -- Events that users have chosen to follow or join:
UserEvents.create(
	users_id: Users.find(aarti.id),
	events_id: Events.find(e1.id),
	following: true,
	going: true
)
UserEvents.create(
	users_id: Users.find(aarti.id),
	events_id: Events.find(e2.id),
	following: true,
	going: true
)
UserEvents.create(
	users_id: Users.find(achintya.id),
	events_id: Events.find(e3.id),
	following: true,
	going: false
)
UserEvents.create(
	users_id: Users.find(achintya.id),
	events_id: Events.find(e4.id),
	following: true,
	going: true
)
UserEvents.create(
	users_id: Users.find(abhishek.id),
	events_id: Events.find(e5.id),
	following: true,
	going: false
)
UserEvents.create(
	users_id: Users.find(abhishek.id),
	events_id: Events.find(e6.id),
	following: true,
	going: false
)