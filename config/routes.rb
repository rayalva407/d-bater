Rails.application.routes.draw do
  root 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :debates, only: [:index]

  resources :users do 
    resources :debates
  end
end
