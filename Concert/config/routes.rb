Concert::Application.routes.draw do
  resources :goconcerts


  resources :name_concerts


  resources :band_usuarios

  resources :bands do
    member do
      get "add_usuario"
    end
  end  


root :to => "sites#index"
  get "welcome/index"

  resources :usuario_sessions
  
  match 'login' => 'usuario_sessions#new', as: :login

  match 'logout' => 'usuario_sessions#destroy', as: :logout
    
  match "/auth/:provider/callback" => "usuario_sessions#create"  

#get "logout" => "usuario_sessions#destroy", :as => "logout"
#get "login" => "usuario_sessions#new", :as => "login"
#get "signup" => "usuarios#new", :as => "signup"

  resources :sessions

  resources :searchs_session

  resources :usuarios

  resources :searchs

  resources :bands

  resources :sites

  resources :viewers

  resources :dtypes

  resources :utypes

  resources :districts

  resources :users
  
  resources :roles


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
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
