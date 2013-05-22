Spizzicaluna::Application.routes.draw do

  resources :bruschetta

  resources :line_items

  resources :carts

  resources :countries

  resources :trackings

  resources :statuses

  resources :sandwiches

  resources :foams

  resources :tastes

  resources :colors

  resources :aromas

  resources :lids

  resources :manufacturers

  resources :beerstyles

  resources :beers

  resources :containers

  resources :ingredients

  devise_for :users

	root :to => "home#index"
#  get "home/index"


#	resources :users
#  devise_for :admins
#	devise_for :admins, :path_names => {:sign_in => "login", :sign_out => "logout"}, :path => "admin"
  match '/orders/control', :to => 'orders#control'
  match '/line_items/delete/:item_id', :to => "line_items#destroy"

  resources :orders
  resources :items

  match 'orders' => 'orders#new'
  match 'one' => 'home#spizzicaluna_one'
  match 'open' => 'home#spizzicaluna_open'
  match 'brewing' => 'home#spizzicaluna_brewing'
  match 'contacts_one' => "home#contacts_one"
  match 'delivery_one' => "home#delivery_one"
  match 'bar_one' => "home#bar_one"
  match 'contacts_brewing' => "home#contacts_brewing"
  match 'bar_brewing' => "home#bar_brewing"
  match 'gallery_one' => 'home#gallery_one'

  match 'beer_lager' => "beers#lager"
  match 'beer_doppio_malto' => "beers#doppio_malto"



  devise_for :users, :path_names => {:sign_in => "login", :sign_out => "logout"}, :path => "d"
  resources :users

 namespace :admin do
	match '/' => 'users#index'
	resources :users
 end


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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
