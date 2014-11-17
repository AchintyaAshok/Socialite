class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  $yelpClient = Yelp::Client.new({consumer_key: 'P0c0K1K4r1BQL35xHG55Dg',
                    		          consumer_secret: 'x1aO6bg8TLD99-iP9bqnQBlstio',
                    		          token: 'pZFBgc9FwJel-Cf8ObUw5Lzij_0YRr_M',
                    		          token_secret: 'ivpsd0yGZmWhvolew_0LmHwEBvE'
                  	 	          })

  #yelp/search/:lat/:long, returns buisnesses in the area specified by lat and long
  def searchByLatLong
  	render json: $yelpClient.search_by_coordinates({latitude: params[:lat], longitude: params[:long]}, {limit: 5}).businesses
  end

  #yelp/search/:id, return a buisness object give the buisness id which can be pulled off the JSON from above query
  def searchById
  	render json: $yelpClient.business(params[:id])
  end

  #yelp/searchExact/:exactLocation, if user enters phrases, zip code, exact address, etc
  def searchByExact
  	render json: $yelpClient.search(params[:exactLocation], {limit: 5})
  end

  #yelp/searchTerm/:term/:lat/:long, returns buisnessed that match a certain term, ex: "movies" near a specific lat long
  def searchByTerm
  	render json: $yelpClient.search_by_coordinates({latitude: params[:lat], longitude: params[:long]}, {limit: 5, term: params[:term]}).businesses
  end

end
