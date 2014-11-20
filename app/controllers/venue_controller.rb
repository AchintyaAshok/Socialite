class VenueController < ApplicationController

	'''
		Returns all YELP venues. Will not include user made "venues"
	'''
	def index
		@venues = Venue.find_by_sql "SELECT * FROM venues ORDER BY name"
		render json: @venues
	end

	# given yelp_Id, returns venue
	def show
		@venues = Venue.find_by_sql ["SELECT * FROM venues WHERE yelp_Id = ?", params[:id]]
		render json: @venues
	end

	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@venues = Venue.find_by_sql ["SELECT * FROM venues WHERE name LIKE ?", searchStr]
		render json: @venues
	end
end
