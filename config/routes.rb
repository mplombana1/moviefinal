Rails.application.routes.draw do
  root 'show#index'
 
  devise_for :users

  resources :movie_records, only: [:index, :destroy, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index' => 'show#index'
  get 'movie' => 'show#movie'
  post 'search' => 'show#search'

end
