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
	def create
		#api/events/create/:person_id/:name/:description/:venue_id/:starts/:ends

		#creates and adds event to event table
		event = Events.create!(
			name: params[:name],
			description: params[:description],
			venue_id: params[:venue_id],
			starts: params[:starts],
			ends: params[:ends],
			num_attending: 1
		)
		event.save!

		#adds into person event table (creator of event is always going)
		PersonEvent.create(
			people_id: params[:person_id],
			events_id: event.id,
			following: true,
			going: true
		)
		render json: "Success"
	end
	def updateFollowing
		@personEvent = PersonEvent.find_by_sql ["SELECT * FROM person_events WHERE people_id = ? AND events_id = ?", params[:person_id], params[:events_id]]
		if params[:is_following] == 'true'
			@personEvent[0].following = true
			@personEvent[0].save!
		else
			@personEvent[0].following = false
			@personEvent[0].save!
		end
		render json: "Success"
	end
	def updateGoing
		@personEvent = PersonEvent.find_by_sql ["SELECT * FROM person_events WHERE people_id = ? AND events_id = ?", params[:person_id], params[:events_id]]
		if params[:is_going] == 'true'
			@personEvent[0].going = true
			@personEvent[0].save!
			@event = Events.find_by_sql ["SELECT * FROM events WHERE id = ?", params[:events_id]]
			@event[0].num_attending = @event[0].num_attending + 1
			@event[0].save!
		else
			@personEvent[0].going = false
			@personEvent[0].save!
			@event = Events.find_by_sql ["SELECT * FROM events WHERE id = ?", params[:events_id]]
			@event[0].num_attending = @event[0].num_attending - 1
			@event[0].save!
		end
		render json: "Success"
	end
end