Timebank::Application.routes.draw do
  resources :offers

  resources :requests

  resources :transactions

  resources :accounts

  resources :banks

  resources :skills

  resources :pictures

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

resources :user_sessions
resources :users

match 'profile' => 'users#show', :as => :profile
match 'profile/edit' => 'users#edit', :as => :edit_profile
match 'profile/update' => 'users#update', :as => :update_profile
match 'login' => "user_sessions#new",      :as => :login
match 'logout' => "user_sessions#destroy", :as => :logout
match 'signup' => "users#new", :as => :signup
match 'about' => "home#about", :as => :about
match 'home' => "home#about", :as => :home

#  resources :user_session
#  map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route

#  map.resource :account, :controller => "users"
#  map.resources :users

#  map.signup '/signup', :controller => 'users', :action => 'new'
#  map.login '/login', :controller => 'user_sessions', :action => 'new'
#  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
#  map.about '/about', :controller => 'home', :action => 'about'
#  map.home '/', :controller => 'home'
end
