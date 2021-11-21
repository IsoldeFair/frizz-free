Rails.application.routes.draw do
  resources :ingredients
  root 'ingredients#index'
end
