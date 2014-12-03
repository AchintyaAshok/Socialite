class VenueController < ApplicationController

	'''
		Returns all venues
	'''
	def index
		@venues = Venue.find_by_sql "SELECT * FROM venues ORDER BY name"
		render json: @venues
	end

	# given id, returns venue
	def show
		@venues = Venue.find_by_sql ["SELECT * FROM venues WHERE id = ?", params[:id]]
		render json: @venues
	end

	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@venues = Venue.find_by_sql ["SELECT * FROM venues WHERE name LIKE ?", searchStr]
		render json: @venues
	end

	def create
		#api/create/venue/:name/:yelp_Id/:lat/:long/:address/:phone
		venue = Venue.create!(
			name: params[:name],
			yelp_Id: params[:yelp_Id],
			lat: params[:lat],
			long: params[:long],
			address: params[:address],
			phone: params[:phone]
		)
		venue.save!
		
		render json: "Success"
	end
end
