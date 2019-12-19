Rails.application.routes.draw do
  resources :comments
  get 'movies/index'
  root 'movies#index'

  get 'movies/search', to: "movies#search"
  get 'movies/popular', to: "movies#popular"
  get 'movies/upcoming', to: "movies#upcoming"
  get 'movies/show', to: "movies#show" do
    resources :comments
  end
end
