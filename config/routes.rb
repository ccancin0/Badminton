

Rails.application.routes.draw do
  get '/films/inventory', to: 'films#inventory', as: 'films_inventory'
  post '/films/inventory', to: 'films#produce'
  get '/reviewers/inventory', to: 'reviewers#inventory', as: 'reviewers_inventory'
  post '/reviewers/inventory', to: 'reviewers#produce'
  get '/actors/inventory', to:'actors#inventory', as: 'actors_inventory'
  post '/actors/inventory', to: 'actors#produce'

  resources :reviewers
  resources :actors
  resources :films

  get 'acklatt', to: 'static_pages#acklatt', as: 'acklatt'
  get 'sdflming', to: 'static_pages#sdflming', as: 'sdflming'
  get 'ccancino', to: 'static_pages#ccancino', as: 'ccancino'
  get 'ahayes', to: 'static_pages#ahayes', as: 'ahayes'

  # Set the default page for the web app.
  root to: 'static_pages#sdflming'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
