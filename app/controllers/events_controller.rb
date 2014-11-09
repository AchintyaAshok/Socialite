class EventsController < ApplicationController
	def index
		@events = Events.all
		render json: @events
	end
	def show
		@event = Events.find(params[:id])
		render json: @event
	end
end
