class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  $client = Yelp::Client.new({consumer_key: 'P0c0K1K4r1BQL35xHG55Dg',
                    		  consumer_secret: 'x1aO6bg8TLD99-iP9bqnQBlstio',
                    		  token: 'pZFBgc9FwJel-Cf8ObUw5Lzij_0YRr_M',
                    		  token_secret: 'ivpsd0yGZmWhvolew_0LmHwEBvE'
                  	 	    })

  def searchByLatLong
  	render json: $client.search_by_coordinates({latitude: params[:lat], longitude: params[:long]}, {limit: 5}).businesses
  end

  def searchById
  	render json: $client.business(params[:id])
  end

  def searchByExact
  	render json: $client.search(params[:exactLocation], {limit: 5})
  end

  def searchByTerm
  	render json: $client.search_by_coordinates({latitude: params[:lat], longitude: params[:long]}, {limit: 5, term: params[:term]}).businesses
  end
end
