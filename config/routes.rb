Rails.application.routes.draw do
  resources :ingredients
  root 'home#index'
end
