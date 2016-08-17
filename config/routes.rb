Rails.application.routes.draw do

  get 'verticals/create'

  get 'verticals/destroy'

  root 'page#index'

  #validating user email
  resources :users, except: :index do
    member do
      get :confirm_email
    end
  end
  #user approval
  patch '/users/:id/approve' => 'users#approve', as: 'user_approve'

  #routes for login form/login in/logging out
  get 'login' => 'sessions#new'
  post '/login'=> 'sessions#create'
  get '/logout' => 'sessions#destroy'

  #routes for investors
  resources :investors
  get '/investors' => 'investors#index'


  #routes for startups
  resources :startups
  get '/startups' => 'startups#index'

  #approving startups
  patch '/startups/:id/approve' => 'startups#approve', as: 'startup_approve'

  #approving investors
  patch '/investors/:id/approve' => 'investors#approve', as: 'investor_approve'

  get '/get_filter' => 'page#get_filter'
  get '/vertical-search' => 'page#vertical_search'
  get '/search' => 'page#search'
  get '/admin_panel' => 'users#admin_panel'
  get '/secret' => 'page#secret'
  get '/register' => 'users#new'

end
