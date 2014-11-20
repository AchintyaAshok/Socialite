class EventsController < ApplicationController
	def index
		#@events = Events.all
		@events = Events.find_by_sql "SELECT * FROM events"
		render json: @events
	end
	def show
		#@event = Events.find(params[:id])
		@event = Events.find_by_sql ["SELECT * FROM events WHERE id = ? ", params[:id]]
		render json: @event
	end
	def search
		searchStr = params[:searchString] #regular expression of search string
		searchStr = "%" + searchStr + "%"
		@events = Events.find_by_sql ["SELECT * FROM events WHERE name LIKE ? OR description LIKE ?", searchStr, searchStr]
		render json: @events
	end
	#Find events that happen at a specific venue, given that venue id
	def searchVenue
		@events = Events.find_by_sql ["SELECT * FROM events WHERE venue_id = ?", params[:venue_id]]
		render json: @events
	end
end