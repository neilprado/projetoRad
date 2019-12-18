Rails.application.routes.draw do
  get 'movies/index'
  root 'movies#index'
  resources :users

  get 'movies/search', to: "movies#search"
  get 'movies/popular', to: "movies#popular"
  get 'movies/upcoming', to: "movies#upcoming"

end
