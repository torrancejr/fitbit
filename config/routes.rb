Rails.application.routes.draw do
  get 'activites/index'

  resources :activities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
