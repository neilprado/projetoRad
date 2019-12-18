Rails.application.routes.draw do
  get 'movies/index'
  root 'movies#index'
  resources :users

  get 'movies/search', to: "movies#search"

end
