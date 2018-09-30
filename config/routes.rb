Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/dashboard', to: 'dashboard#index'
  get '/conditions-dashboard', to: 'conditions_dashboard#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/trips-dashboard', to: 'trips_dashboard#index'
  get '/stations-dashboard', to: 'stations_dashboard#index'

  # resources :stations, only: [:index, :show], param: :slug
  get '/stations', to: 'stations#index'
  get '/station', to: 'stations#show'

  # resources :trips, only: [:index, :show]
  get '/trips', to: 'trips#index'
  get '/trip', to: 'trips#show'

  # resources :conditions, only: [:index, :show]
  get '/conditions', to: 'conditions#index'
  get '/conditios', to: 'conditions#show'

  get '/cart', to: 'carts#index'
  post '/cart', to: 'carts#create'
  patch '/cart', to: 'carts#update'
  delete '/cart', to: 'carts#destroy'

  # resources :users, only: [:new, :create, :edit, :update]
  post '/users', to: 'users#create'
  get '_user', to: 'users#new'
  get '/edit_user', to: 'users#edit'
  patch '/user', to: 'users#update'
  put '/user', to: 'users#update'

  # resources :orders, only: [:create, :show]
  post '/orders', to: 'orders#create'
  get '/order', to: 'orders#show'

  get '/bike-shop', to: 'items#index'
  # resources :items, only: [:show]
  get '/item', to: 'items#show'

  # namespace :admin do
  #   get '/dashboard', to: 'dashboard#index'
  #   get '/bike-shop', to: 'items#index'
  #   resources :trips, only: [:edit, :destroy, :new, :create, :update]
  #   resources :conditions, only: [:edit, :destroy, :new, :create, :update]
  #   resources :stations, only: [:edit, :update, :destroy, :create, :new], param: :slug
  #   resources :items, only: [:new, :create, :edit, :update]
  #   resources :orders, only: [:update, :show]
  # end

  get     'admin_dashboard',            to: 'admin/dashboard#index'
  get     '/admin/bike-shop',           to: 'admin/items#index'
  post    '/admin/trips',               to: 'admin/trips#create'
  get     '/admin/trips',               to: 'admin/trips#new'
  get     '/admin/trips/:id/edit',      to: 'admin/trips#edit'
  patch   '/admin/trips/:id',           to: 'admin/trips#update'
  put     '/admin/trips/:id',           to: 'admin/trips#update'
  delete  '/admin/trips/:id',           to: 'admin/trips#destroy'
  post    '/admin/conditions',          to: 'admin/conditions#create'
  get     '/admin/conditions',          to: 'admin/conditions#new'
  get     '/admin/conditions/:id/edit', to: 'admin/conditions#edit'
  patch   '/admin/conditions/:id',      to: 'admin/conditions#update'
  put     '/admin/conditions/:id',      to: 'admin/conditions#update'
  delete  '/admin/conditions/:id',      to: 'admin/conditions#destroy'
  post    '/admin/stations',            to: 'admin/stations#create'
  get     '/admin/stations',            to: 'admin/stations#new'
  get     '/admin/stations/:slug/edit', to: 'admin/stations#edit'

  patch   '/admin/stations/:slug',      to: 'admin/stations#update'
  put     '/admin/stations/:slug',      to: 'admin/stations#update'
  delete  '/admin/stations/:slug',      to: 'admin/stations#destroy'
  post    '/admin/items',               to: 'admin/items#create'
  get     '/admin/items',               to: 'admin/items#new'
  get     '/admin/items/:id/edit',      to: 'admin/items#edit'
  patch   '/admin/items/:id',           to: 'admin/items#update'
  put     '/admin/items/:id',           to: 'admin/items#update'
  get     '/admin/orders/:id',          to: 'admin/orders#show'
  patch   '/admin/orders/:id',          to: 'admin/orders#update'
  put     '/admin/orders/:id',          to: 'admin/orders#update'
end
