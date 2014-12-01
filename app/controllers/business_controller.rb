class BusinessController < ApplicationController

	# ''' Allows businesses to create an event '''
	# def createEvent
	# 	@event = BusinessEvent.new(params[:eventString])
	# 	@event.save()
	# end


	''' Finds registered businesses by string '''
	def search
		searchStr = params[:searchString]
		searchStr = "%" + searchStr + "%"
		@businesses = Business.find_by_sql ["SELECT * FROM businesses WHERE name LIKE ?", searchStr]
		render json: @businesses
	end


	''' Finds registered businesses by ID, if user has it '''
	def show
		businessID = Business.find(params[:id]).id
		@businessID = Business.find_by_sql ["SELECT * FROM businesses WHERE id = ?", businessID]
		render json: @businessID
	end


	''' Finds events hosted by business by its ID, and a separate endpoint for its name.
		Gets all the businesses without ID or name.
		Gets all the events for that business once connection established ''' 
	def getEvents
		businessID = Business.find(params[:id]).id
		@businessID = Business.find_by_sql ["SELECT * FROM business_events WHERE businesses_id = ?", businessID]
		render json: @businessID
	end

	def index
		@businesses = Business.find_by_sql "SELECT * FROM businesses ORDER BY name"
		render json: @businesses
	end

end
