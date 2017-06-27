Rails.application.routes.draw do
  root "activities#index"

  get 'auth/fitbit/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities
  resources :sessions

end
