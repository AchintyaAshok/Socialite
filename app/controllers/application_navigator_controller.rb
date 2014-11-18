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

	def about
	end

	def terms
	end

	def privacy
	end

	def help
	end
end
