Urdb::Application.routes.draw do
  resources :movies do
    resources :showtimes
    resources :comments
  end
  
  root 'movies#index'
end
