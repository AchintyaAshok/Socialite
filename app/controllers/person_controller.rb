class PersonController < ApplicationController
	'''
	Returns all the users in the users table.
	'''
	def index
		@people = Person.find_by_sql "SELECT * FROM people ORDER BY username"
		render json: @people
	end

	'''
	Finds a user by the id number provided in the parameter.
	'''
	def show
		@user = Person.find_by_sql ["SELECT * FROM people WHERE id = ?", params[:id]]
		render json: @user
	end

	'''
	This method searches for users that have a username similar to the search string that is passed
	in as the parameter.
	'''
	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@users = Person.find_by_sql ["SELECT DISTINCT * FROM people WHERE username LIKE ? OR first_name LIKE ? OR last_name LIKE ?", searchStr, searchStr, searchStr]
		render json: @users
	end

	'''
		Input: ID of the user in params[:id]
		Output: JSON list of event ids

		Method that gets all followed and events that the user is going to.
	'''
	def getEvents
		userID = Person.find(params[:id]).id
		@userEvents = PersonEvent.find_by_sql ["SELECT * FROM person_events WHERE people_id = ?", userID]
		render json: @userEvents
	end

	''' 
		Input: ID of the user
		Output: JSON list of event ids

		This method retrieves all the events that are being followed by the user with the
		specified id in the parameter.
	'''
	def getFollowedEvents
		userID = params[:id]
		@followedEvents = PersonEvent.find_by_sql ["SELECT * FROM person_events WHERE people_id = ? AND following = ?", userID, 't']
		render json: @followedEvents
	end

	''' 
		Input: ID of the user
		Output: JSON list of event ids

		This method retrieves all the events that the user is going to.
	'''
	def getGoingToEvents
		userID = params[:id]
		@goingToEvents = PersonEvent.find_by_sql ["SELECT * FROM person_events WHERE people_id = ? AND going = ?", userID, 't']
		render json: @goingToEvents
	end

	def followEvent
		#puts "Person logged in: #{current_person[:username]}"
		personID = params[:person_id]
		eventID = params[:event_id]
		event = Events.find(eventID)
		#puts "Privacy Level: #{event[:privacy]}"
		if event[:privacy] == 0 # 0 is public for this enumerated value
			con = ActiveRecord::Base.connection.raw_connection
			#puts "Connection: #{con}"
			#query = "INSERT INTO person_events (people_id, events_id) VALUES ($1, $2)"
			con.prepare('exec_query', "INSERT INTO person_events (people_id, events_id) VALUES ($1, $2)")
			st = con.exec_prepared('exec_query', [personID, eventID])
		else
			puts "Cannot insert because this event is not public"
		end
		puts "#{Person.find(personID).username} wishes to follow #{Events.find(eventID).name}"
	end

end
