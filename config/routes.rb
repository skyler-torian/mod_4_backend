Rails.application.routes.draw do
  resources :songs
  resources :users
  resources :saved_songs
end
