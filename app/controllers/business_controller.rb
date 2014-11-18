class BusinessController < ApplicationController
	def show
		@business = BusinessModel.find_by_sql ["SELECT * FROM businesses WHERE business_name = ?", params[:id]]
		render json: @business
	end

end