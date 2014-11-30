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
		
		# connection = ActiveRecord::Base.connection.raw_connection
		# connection.prepare('query_statement', "SELECT * FROM people WHERE id = $1")
		# st = connection.exec_prepared('query_statement', params[:id])
		
		# puts st

		render json: @user
	end

	'''
	This method searches for users that have a username similar to the search string that is passed
	in as the parameter.
	'''
	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@users = Person.find_by_sql ["SELECT * FROM users WHERE username LIKE ?", searchStr]
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
end
