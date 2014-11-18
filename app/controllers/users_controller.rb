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
end
