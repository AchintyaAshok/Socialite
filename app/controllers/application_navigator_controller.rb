class ApplicationNavigatorController < ApplicationController
	before_action :authenticate_person!

	def index
		if person_signed_in?
			puts "YAY! " 
			puts current_person[:email]
			puts " is signed in!"
		end
		sign_out_all_scopes #sign out everyone
	end

	def getEvent
		id = params[:id]
		if id == nil
			puts "redirecting to index"
			index()
		end
		puts "This is the id passed in -> ", id
	end

	def signOut
		puts "In signOut()"
		if person_signed_in?
			puts "The Following User is signed in:"
			puts current_person[:username]
			sign_out current_person
		end
	end

end
