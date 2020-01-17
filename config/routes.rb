Rails.application.routes.draw do
  root 'properties#index'
  get '/properties/search'
  get '/properties', to: 'properties#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
