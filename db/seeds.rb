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

# Creating some venues (real data from yelp)
v1 = Venue.create!(
	  name: 'Prospect Park Brooklyn',
      yelp_Id: 'prospect-park-brooklyn',
      ll: '40.6669006,-73.9747543',
      address: '95 Prospect Park W, Brooklyn, NY 11215',
      phone: '+1-718-965-8951',
      review_count: 420,
      rating: 4.5
)
v1.save!

v2 = Venue.create!(
	  name: 'Brooklyn Bridge Park',
      yelp_Id: 'brooklyn-bridge-park-brooklyn',
      ll: '40.7016262778116,-73.9972114562988',
      address: 'Pier 1, Brooklyn, NY 11201',
      phone: '+1-718-222-9939',
      review_count: 312,
      rating: 4.5
)
v2.save!

v3 = Venue.create!(
	  name: 'Brooklyn Heights Promenade',
      yelp_Id: 'brooklyn-heights-promenade-brooklyn',
      ll: '40.6994286,-73.9957886',
      address: 'Columbia Heights, Brooklyn Heights, Brooklyn, NY 11201',
      phone: '',
      review_count: 219,
      rating: 5.0
)
v3.save!

v4 = Venue.create!(
	  name: 'Brooklyn Bridge',
      yelp_Id: 'brooklyn-bridge-brooklyn',
      ll: '40.704847145301,-73.9955377578735',
      address: 'Brooklyn, NY 11201',
      phone: '',
      review_count: 827,
      rating: 5.0
)
v4.save!

v5 = Venue.create!(
	  name: 'Elite Event: Hot LIC Nights at Blend On The Water',
      yelp_Id: 'elite-event-hot-lic-nights-at-blend-on-the-water-long-island-city',
      ll: '40.7446517944336,-73.9581069946289',
      address: '4540 Center Blvd, Hunters Point, Long Island City, NY 11109',
      phone: '',
      review_count: 98,
      rating: 5.0
)
v5.save!