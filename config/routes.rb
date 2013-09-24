Spizzicaluna::Application.routes.draw do

  resources :prenotations, :path => "prenotazione"

  # resources :one_photos, :path => "galleria-spizzicaluna"

  resources :itemstatuses

  resources :beveragecategories

  resources :beverages, :path => "bevande"

  resources :foodcategories

  resources :foods, :path => "food"

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

  resources :beers, :path => "birre"

  resources :containers

  resources :ingredients

  devise_for :users

	root :to => "home#index"
#  get "home/index"


#	resources :users
#  devise_for :admins
#	devise_for :admins, :path_names => {:sign_in => "login", :sign_out => "logout"}, :path => "admin"
  get '/orders/control', :to => 'orders#control'
  post '/line_items/delete/:item_id/:quantity', :to => "line_items#destroy"

  resources :orders
  resources :items

  get 'orders' => 'orders#new'

  # get 'spizzicaluna-one' => 'home#bar_one'
  get 'bar-spizzicaluna' => "home#bar_one"

  get 'open' => 'home#spizzicaluna_open'
  get 'brewing' => 'home#spizzicaluna_brewing'
  get 'spizzicaluna-contatti' => "home#contacts_one"
  get 'spizzicaluna-consegna' => "home#delivery_one"
  get 'contatti-brewing' => "home#contacts_brewing"
  get 'bar-brewing' => "home#bar_brewing"
  get 'galleria-brewing' => 'home#gallery_brewing'

  get 'bar_one_prenotazione' => 'home#bar_one_prenotazione'

  get 'show_by_style' => "beers#show_by_style"
  get 'beer_big_format' => 'beers#big_format'

  get 'show_by_foodcategories' => "foods#show_by_foodcategories"
  get 'show_by_beveragecategories' => "beverages#show_by_beveragecategories"

  get 'galleria-spizzicaluna' => 'home#gallery_spizzicaluna'

  devise_for :users, :path_names => {:sign_in => "login", :sign_out => "logout"}, :path => "d"
  resources :users

 namespace :admin do
	get '/' => 'users#index'
	resources :users
 end

  get "*a" => "home#error"

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
