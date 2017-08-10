Rails.application.routes.draw do
  root 'show#index'
  resources :movie_records
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index' => 'show#index'
  get 'movie' => 'show#movie'
end
