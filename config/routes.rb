Rails.application.routes.draw do
  root "activities#index"

  get 'auth/fitbit/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities
  resources :users
  resources :sessions
  resources :charts
  resources :fitbitdatum

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end

end
