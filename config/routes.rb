Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'
  
  get '/studios', to: 'studios#index'

  get '/artists', to: 'artists#index'
end
