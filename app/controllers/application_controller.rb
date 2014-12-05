class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Vincent gets an SSL error without this statement, might be a Windows thing
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  Instagram.configure do |config|
    config.client_id = "566ea725db764e58b46700d468864ef4"
    config.client_secret = "0dc90579831841a1832933b71ec38cb3"
    config.access_token = "30916787.566ea72.ce7d060adc974c6fb470d4715ad8751b"
  end

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

  #instagram
  def searchForPictures
    @images = Array.new
    for media_item in Instagram.media_search(params[:lat], params[:long], {distance: 50})
      @images << media_item.images.standard_resolution.url
    end
    render json: @images
  end

  def searchForPicturesByVenueId
    @images = Array.new
    @venues = Venue.find_by_sql ["SELECT * FROM venues WHERE id = ?", params[:venue_id]]
    if !@venues.blank?
      @lat = @venues[0].lat
      @long = @venues[0].long
      for media_item in Instagram.media_search(@lat, @long, {distance: 50})
        @images << media_item.images.standard_resolution.url
      end
    end
    render json: @images
  end

  def searchByTag
    @images = Array.new
    tags = Instagram.tag_search(params[:tag])
    for media_item in Instagram.tag_recent_media(tags[0].name)
      @images << media_item.images.standard_resolution.url
    end
    render json: @images
  end

end
