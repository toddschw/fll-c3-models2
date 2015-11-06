Rails.application.routes.draw do
  resources :users
  root 'home#index', school: "Wyncode"
  get "/home/(:path)", to: "home#index", special: true
  get '/list', to: "home#list"

  get "/login", to: "home#login"
  get "/logout", to: "home#logout"

  get 'redirect', to: "home#redirector", as: :redirector

  # get "/wyncode", to: "home#index", school: "Wyncode"
  # get "/flatiron", to: "home#index", school: "Flatiron"

  # Arity is different!
  # Maybe a splat (*) behind the scenes?
  # post "/post" => "home#post"
  # post({"/post" => "home#post"})
  post "/post", to: "home#post"
  # post("/post", { to: "home#post" })

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
