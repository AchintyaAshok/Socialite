class BusinessController < ApplicationController
	def show
		@business = BusinessModel.find_by_sql ["SELECT * FROM businesses WHERE business_name = ?", params[:id]]
		render json: @business
	end

	def findEventsHostedByBusinesses
		# Code to get business id

		# Code for using the id passed as a parameter

		# Return events
	end

	def findRegisteredBusinesses
		# Get business id, or business name

		# Return business name
	end

	def createEvent

		# get information from text fields about events

		# input into database so it saves and reflects

	end

end