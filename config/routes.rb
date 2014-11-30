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
  get 'api/events'      => 'events#index'
  get 'api/events/:id'  => 'events#show'
  get 'api/events/search/:searchString' => 'events#search' # allows searching by a string for events

  ## People
  get 'api/people'                      => 'person#index'
  get 'api/people/:id'                  => 'person#show'
  get 'api/people/search/:searchString' => 'person#search'
  get 'api/people/:id/events'           => 'person#getEvents'
  get 'api/people/:id/events/following' => 'person#getFollowedEvents'
  get 'api/people/:id/events/goingto'   => 'person#getGoingToEvents'

  #yelp api calls
  get 'yelp/search/:lat/:long'  => 'application#searchByLatLong', :lat => /.*/, :long => /.*/
  get 'yelp/search/:id'         => 'application#searchById'
  
  get 'yelp/searchExact/:exactLocation'   => 'application#searchByExact'
  get 'yelp/searchTerm/:term/:lat/:long'  => 'application#searchByTerm', :lat => /.*/, :long => /.*/
  

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
