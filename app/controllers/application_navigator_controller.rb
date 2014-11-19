class ApplicationNavigatorController < ApplicationController
	def index
	end

	def getEvent
		id = params[:id]
		if id == nil
			puts "redirecting to index"
			index()
		end
		puts "This is the id passed in -> ", id

end
