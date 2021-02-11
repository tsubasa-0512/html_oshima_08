Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  resources :articles
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
