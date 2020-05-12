Rails.application.routes.draw do
  resources :multimedia
  resources :albums

  get '/media/:m', to: 'home#media'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'
end
