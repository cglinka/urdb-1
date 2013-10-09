Urdb::Application.routes.draw do
  resources :movies do
    resources :showtimes
    resources :star, only: [:show]
  end

  root 'movies#index'
end
