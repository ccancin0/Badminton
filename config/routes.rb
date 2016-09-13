Rails.application.routes.draw do

  #get 'sdflming', to: 'static_pages#sdflming', as: 'sdflming'
  get 'ccancino', to: 'static_pages#ccancino', as: 'ccancino'

  # Set the default page for the web app.
  root to: 'static_pages#sdflming'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
