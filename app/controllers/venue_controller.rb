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
end
