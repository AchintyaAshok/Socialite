class FriendController < ApplicationController
	
	def index
		@friends = Friend.find_by_sql "SELECT * FROM friends"
		render json: @friends
	end

	def show
		@friends = Friend.find_by_sql ["SELECT * FROM friends WHERE person_id = ? ", params[:id]]
		render json: @friends
	end

	def getFriends
		#api/friends/:id/:event_id
		@ids = Set.new()
		@usernames = Array.new()

		@friends = Friend.find_by_sql ["SELECT * from friends WHERE person_id = ?", params[:id]]

		@friends.each do |friend|
			@events = PersonEvent.find_by_sql ["SELECT * from person_events where people_id = ? AND events_id = ? AND going = ?", friend.friend_id, params[:event_id], true]
			if !@events.blank?
				@ids << friend.friend_id
			end
		end

		@ids.each do |id|
			@people = Person.find_by_sql ["SELECT * from people where id = ?", id]
			@usernames << @people[0].username
		end

		render json: @usernames
	end
end
