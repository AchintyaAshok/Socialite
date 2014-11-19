class UsersController < ApplicationController
	'''
	Returns all the users in the users table.
	'''
	def index
		@users = Users.find_by_sql "SELECT * FROM users ORDER BY username"
		render json: @users
	end

	'''
	Finds a user by the id number provided in the parameter.
	'''
	def show
		@user = Users.find_by_sql ["SELECT * FROM users WHERE id = ?", params[:id]]
		render json: @user
	end

	'''
	This method searches for users that have a username similar to the search string that is passed
	in as the parameter.
	'''
	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@users = Users.find_by_sql ["SELECT * FROM users WHERE username LIKE ?", searchStr]
		render json: @users
	end

	'''
		Input: ID of the user in params[:id]
		Output: JSON list of event ids

		Method that gets all followed and events that the user is going to.
	'''
	def getEvents
		userID = Users.find(params[:id]).id
		@userEvents = UserEvents.find_by_sql ["SELECT * FROM user_events WHERE users_id = ?", userID]
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
		@followedEvents = UserEvents.find_by_sql ["SELECT * FROM user_events WHERE users_id = ? AND following = ?", userID, 't']
		render json: @followedEvents
	end

	''' 
		Input: ID of the user
		Output: JSON list of event ids

		This method retrieves all the events that the user is going to.
	'''
	def getGoingToEvents
		userID = params[:id]
		@goingToEvents = UserEvents.find_by_sql ["SELECT * FROM user_events WHERE users_id = ? AND going = ?", userID, 't']
		render json: @goingToEvents
	end
end
