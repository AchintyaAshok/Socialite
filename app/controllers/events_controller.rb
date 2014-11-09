class EventsController < ApplicationController
	def index
		@events = Events.all
		render json: @events
	end
	def show
		@event = Events.find(params[:id])
		render json: @event
	end
	def search
		searchStr = params[:searchString] #regular expression of search string
		searchStr = "%" + searchStr + "%"
		@events = Events.find_by_sql ["SELECT * FROM events WHERE name LIKE ? OR description LIKE ?", searchStr, searchStr]
		render json: @events
	end
end