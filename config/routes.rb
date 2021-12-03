Rails.application.routes.draw do
  resources :quizzes
  resources :ingredients
  root 'home#index'
  post 'count_result' => 'quizzes#count_result'
end
