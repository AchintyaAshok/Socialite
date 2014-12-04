Rails.application.routes.draw do
  devise_for :people
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application_navigator#index'
  get 'home'        => 'application_navigator#index'
  get 'events/:id'  => 'application_navigator#getEvent'
  get 'about'       => 'application_navigator#about'
  get 'terms'       => 'application_navigator#terms'
  get 'privacy'     => 'application_navigator#privacy'
  get 'help'        => 'application_navigator#help'
  get 'signout'     => 'application_navigator#signOut'
  
  # API calls
  ## Events
  get 'api/events' => 'events#index'
  get 'api/events/:id' => 'events#show'
  get 'api/eventsVenue/:venue_id' => 'events#searchVenue' # searches for events that happen at a specific venue
  get 'api/events/search/:searchString' => 'events#search' # allows searching by a string for events
  #CRUD operations for events
  get 'api/create/events/:person_id/:name/:description/:venue_id/:starts/:ends' => 'events#create', :starts => /.*/, :ends => /.*/
  post 'api/create/events' => 'events#create' # you must pass in person_id along with the required events stuff
  get 'api/update/follow/:person_id/:events_id/:is_following' => 'events#updateFollowing'
  get 'api/update/going/:person_id/:events_id/:is_going' => 'events#updateGoing'

  ## People
  get 'api/people'                      => 'person#index'
  get 'api/people/:id'                  => 'person#show'
  get 'api/people/search/:searchString' => 'person#search'
  get 'api/people/:id/events'           => 'person#getEvents'
  get 'api/people/:id/events/following' => 'person#getFollowedEvents'
  get 'api/people/:id/events/goingto'   => 'person#getGoingToEvents'

  ## Friends
  get 'api/friends' => 'friend#index'
  get 'api/friends/:id' => 'friend#show'
  get 'api/friends/:id/:event_id' => 'friend#getFriends' #returns friends going to an event

  ## Venue
  get 'api/venue' => 'venue#index'
  get 'api/venue/:id' => 'venue#show'
  get 'api/venue/search/:searchString' => 'venue#search'

  #CRUD operations for venue
  get 'api/create/venue/:name/:yelp_Id/:lat/:long/:address/:phone' => 'venue#create', :lat => /.*/, :long => /.*/
  post 'api/create/venue' => 'venue#create'

  #yelp api calls
  get 'api/yelp/search/:lat/:long'  => 'application#searchByLatLong', :lat => /.*/, :long => /.*/
  get 'api/yelp/search/:id'         => 'application#searchById'
  
  get 'api/yelp/searchExact/:exactLocation'   => 'application#searchByExact'
  get 'api/yelp/searchTerm/:term/:lat/:long'  => 'application#searchByTerm', :lat => /.*/, :long => /.*/
  
  #instagram api
  get 'api/instagram/search/:lat/:long' => 'application#searchForPictures', :lat => /.*/, :long => /.*/
  get 'api/instagram/id/search/:venue_id' => 'application#searchForPicturesByVenueId'
  get 'api/instagram/tag/search/:tag'   => 'application#searchByTag'


  ## Business
  get 'api/businesses'                      => 'business#index'
  get 'api/businesses/:id'                  => 'business#show'
  get 'api/businesses/search/:searchString' => 'business#search'
  get 'api/businesses/:id/events'           => 'business#getEvents'
  # put 'api/businesses/:id' => 'businesses#createEvent'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
