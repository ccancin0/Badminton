Rails.application.routes.draw do

  get 'static_pages/sdflming'

  get 'sdflming', to: 'static_pages#sdflming', as: 'sdflming'

  root to: 'static_pages#sdflming'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
